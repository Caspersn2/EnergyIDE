from objects.Custom import Custom
from objects.Types import DataType, ArrayType, GenericType, Parameter, GenericClassType, GenericMethodType
from objects.Instruction import Instruction
from objects.Field import Field
from objects.Locals import Local, Locals
from objects.Method import Method
from objects.Container import Container

from parsita import TextParsers, opt, reg, lit, rep, repsep, fwd, rep1sep, rep1
from parsita.util import constant, splat
from parsita.state import Success
import re


POSITIVE_INT = r'[0-9]+'
HEX = r'[0-9a-fA-F]+'
INTEGER = r'([-+]?[0-9]+|0x[0-9a-f]+)'
DOUBLE = r'[+-]?\d+\.\d+(e[+-]?\d+)?'
BYTES = r'[0-9a-f]'
COMMENT = r'//[^\n]+'
PARAM = '.param'


def dot_join(*lst):
    return '.'.join(lst)

def slash_join(*lst):
    return '/'.join(lst)


class NameParser(TextParsers):
    small_id = reg(r'[_$@`?A-Za-z][_$@`?A-Za-z0-9]*')
    sqstring = reg(r'\'[^\']*\'')
    qstring = reg(r'\"[^\"]+\"')
    identifier = \
            small_id \
            | sqstring
    dotted_name = rep1sep(identifier, '.') > splat(dot_join)
    slashedName = rep1sep(dotted_name, '/') > splat(slash_join)
    classname = \
            ('[' & opt('.module') & dotted_name & ']') >> slashedName \
            | slashedName
    dataLabel = identifier



class TypeParser(TextParsers):    
    primitive_types = lit('object', 'string', 'typedref', 'char', 'void', 'bool', 'int8', 'int16', 'int32', 'int64', 'float32', 'float64', 'uint8', 'uint16', 'uint32', 'uint64', 'native int', 'native uint', 'native float')
    type1 = \
            ('class ' >> NameParser.classname > DataType.new) \
            | lit('value') & lit('class') & NameParser.classname \
            | ('valuetype ' >> NameParser.classname > DataType.new) \
            | ('!' & (reg(POSITIVE_INT) | NameParser.identifier) > GenericClassType) \
            | ('!!' & (reg(POSITIVE_INT) | NameParser.identifier) > GenericMethodType) \
            | (primitive_types > DataType.new)
    genArgs = fwd()
    typespec = fwd()
    type2 = \
            (type1 << '<' & genArgs << '>' > splat(GenericType.new)) \
            | type1
    bound = \
            reg(POSITIVE_INT) & lit('...') & reg(POSITIVE_INT) \
            | reg(POSITIVE_INT) & lit('...') \
            | reg(POSITIVE_INT) \
            | lit('...') 
    type3 = \
            (type2 << lit('[') & repsep(bound, ',') << lit(']') > splat(ArrayType.new)) \
            | type2 & lit('value') & '[' & reg(POSITIVE_INT) & ']' \
            | type2 & '*&' \
            | type2 & '*' \
            | type2 & '&' \
            | type2
    type_ = type3 << opt(lit('modreq', 'modopt') & '(' & typespec & ')')
    genArgs.define(repsep(type_ | NameParser.dotted_name, ','))
    typespec.define(type_ | NameParser.classname)
    genParAttr = lit('+', '-', 'class', 'valuetype', '.ctor')
    genPar = (rep(genParAttr) & opt('(' >> repsep(type_, ',') << ')')) >> NameParser.identifier > DataType
    ddItem = \
            lit('bytearray') & '(' & rep(reg(BYTES)) & ')' \
            | lit('float32', 'float64') & opt('(' >> reg(DOUBLE) << ')') & opt('(' >> reg(INTEGER) << ')') \
            | lit('int8', 'int16', 'int32', 'int64') & opt('(' >> reg(INTEGER) << ')') & opt('(' >> reg(INTEGER) << ')') 
    ddBody = repsep(ddItem, ',')
    dataDecl = lit('cil') >> opt(NameParser.dataLabel << '=') & ddBody



class LocalsParser(TextParsers):
    signature = '[' >> reg(POSITIVE_INT) << ']' & TypeParser.type_ & opt(NameParser.identifier) > splat(Local.new)
    localsSignature = repsep(signature, ',')
    locals_ = '.locals' >> opt('init') << '(' & localsSignature << ')' > splat(Locals)



class FieldParser(TextParsers):
    fieldAttr = lit('assembly', 'family', 'famandassem', 'famorassem', 'initonly', 'literal', 'notserialized', 'private', 'compilercontrolled', 'public', 'rtspecialname', 'specialname', 'static')
    fieldDecl = opt('[' >> reg(INTEGER) << ']')
    boolParse = \
            lit('true') > constant(True) \
            | lit('false') > constant(False) 
    intParse = (reg(INTEGER) > int)
    uintParse = (reg(POSITIVE_INT) > int)
    doubleParse = ((reg(DOUBLE) | reg(INTEGER)) > float)
    boolInit = lit('bool') << '(' & boolParse << ')'
    floatInit = lit('float32', 'float64') << '(' & doubleParse << ')'
    intInit = lit('char', 'int8', 'int16', 'int32', 'int64') << '(' & intParse << ')'
    uintInit = lit('uint8', 'uint16', 'uint32', 'uint64') << '(' & uintParse << ')'
    stringInit = NameParser.qstring
    fieldInit = \
            boolInit \
            | floatInit \
            | intInit \
            | uintInit \
            | stringInit \
            | 'nullref'
    field_ = ('.field' & fieldDecl) >> rep(fieldAttr) & TypeParser.type_ & NameParser.identifier & opt('=' >> fieldInit | 'at' >> NameParser.dataLabel) > splat(Field)



class MethodParser(TextParsers):
    callkind = lit('default', 'vararg')
    callConv = \
            lit('instance', 'explicit') & callConv \
            | opt(callkind)
    pinvattr = lit('ansi', 'autochar', 'cdecl', 'fastcall', 'stdcall', 'thiscall', 'unicode', 'winapi', 'lasterr', 'nomangle')
    pinvoke = lit('pinvokeimpl') & '(' & NameParser.qstring & opt('as' & NameParser.qstring) & rep(pinvattr) & ')'
    methodAttr = lit('abstract', 'assembly', 'family', 'compilercontrolled', 'famandassem', 'famorassem', 'final', 'hidebysig', 'newslot', 'private', 'public', 'rtspecialname', 'specialname', 'static', 'virtual', 'strict') | pinvoke
    methodname = \
            lit('.ctor') \
            | lit('.cctor') \
            | NameParser.dotted_name
    paramAttr = lit('[in]', '[out]', '[opt]')
    implAttr = lit('cil', 'forwardref', 'internalcall', 'managed', 'native', 'noinlining', 'nooptimization', 'runtime', 'synchronized', 'unmanaged', 'aggressiveinlining', 'preservesig')
    sigArg = TypeParser.type_ & opt(NameParser.identifier) > splat(Parameter.new)
    params = rep(paramAttr) >> sigArg
    marshal = (lit('marshal') & '(') >> TypeParser.primitive_types << ')'
    methodHeader = rep(methodAttr) & callConv & (TypeParser.type_ | lit('<bad signature>')) & opt(marshal) & methodname & opt('<' >> (TypeParser.genArgs > GenericMethodType.new) << '>') & '(' >> repsep(params, ',') << (')' & rep(implAttr))
    methodHeaderFull = rep(methodAttr) & callConv & TypeParser.type_ & opt(marshal) & (TypeParser.typespec & '::' & methodname) & opt('<' >> (TypeParser.genArgs > GenericMethodType.new) << '>') & '(' >> repsep(params, ',') << (')' & rep(implAttr))
    method_ = '.method' >> methodHeader > splat(Method)
    customDecl = '.custom' >> methodHeaderFull << opt((lit('=') & '(') & rep(reg(BYTES)) & ')') > Custom
    instruction_ = lit('IL_') >> reg(HEX) << ':' & reg(r'[^\n]+') > splat(Instruction)
    scopeblock = fwd()
    tryblock = lit('.try') & scopeblock
    SEHClause = \
            lit('catch') & TypeParser.typespec & scopeblock \
            | lit('fault') & scopeblock \
            | lit('finally') & scopeblock
    SEHBlock = tryblock & rep1(SEHClause)
    methodBody_ = \
            instruction_ \
            | lit('.entrypoint') \
            | lit('.maxstack') & reg(POSITIVE_INT) \
            | lit(PARAM) << '[' & reg(INTEGER) << ']' & opt('=' >> FieldParser.fieldInit) \
            | lit(PARAM) & 'type' & NameParser.identifier \
            | customDecl \
            | LocalsParser.locals_ \
            | lit('.data') >> TypeParser.dataDecl \
            | lit('.override') & lit('method') & (methodHeaderFull | TypeParser.typespec & '::' & methodname) \
            | scopeblock \
            | SEHBlock
    scopeblock.define('{' >> rep(methodBody_) << '}')



class ClassParser(TextParsers):
    classAttr = lit('abstract', 'ansi', 'auto', 'autochar', 'beforefieldinit', 'explicit', 'interface', 'nested assembly', 'nested family', 'nested private', 'nested public', 'private', 'public', 'rtspecialname', 'sealed', 'sequential', 'serializable', 'specialname', 'unicode')
    propHeader = opt('specialname') & opt('rtspecialname') & MethodParser.callConv & TypeParser.type_ & NameParser.dotted_name << '(' & repsep(MethodParser.params, ',') << ')'
    propMember = (lit('.get') | lit('.set')) & MethodParser.callConv & TypeParser.type_ & opt(TypeParser.typespec & '::') & MethodParser.methodname << '(' & repsep(MethodParser.params, ',') << ')'
    classProperty = '.property' & propHeader << '{' & rep(opt(MethodParser.customDecl) >> propMember) << '}'
    class_ = '.class' >> rep(classAttr) & NameParser.dotted_name & opt('<' >> repsep(TypeParser.genPar, ',') << '>') & opt('extends' >> TypeParser.typespec) & opt('implements' & repsep(opt(MethodParser.customDecl) >> TypeParser.typespec, ',')) > splat(Container.new)
    classMembers_ = \
            (MethodParser.method_ << '{' & rep(MethodParser.methodBody_) << '}' > splat(Method.add_members)) \
            | lit('.pack') & reg(INTEGER) \
            | lit('.size') & reg(INTEGER) \
            | lit(PARAM) & 'type' & NameParser.identifier \
            | classProperty \
            | MethodParser.customDecl \
            | FieldParser.field_ \
            | lit('.data') >> TypeParser.dataDecl \
            | (class_ << '{' & rep(classMembers_) << '}' > splat(Container.add_members))



class InstructionParser(TextParsers):
    method_instruction = MethodParser.methodHeaderFull > splat(Method)
    type_argument_instruction = TypeParser.typespec
    
    @classmethod
    def parse(cls, name, data):
        result = None
        if name in ['call', 'callvirt', 'jmp', 'ldftn', 'ldvirtftn', 'newobj']:
            result = InstructionParser.method_instruction.parse(data)
        elif name in ['box', 'castclass', 'initobj', 'isinst', 'ldelema', 'ldobj', 'newarr', 'refanyval', 'sizeof', 'stobj', 'ldobj', 'unbox', 'unbox.any']:
            result = InstructionParser.type_argument_instruction.parse(data)
        else:
            raise NotImplementedError(f'The command "{name}" has not been implemented in the instruction parser')

        if isinstance(result, Success):
            return result.value
        else:
            print(f'TRIED TO PARSE "{name}" HOWEVER IT FAILED:')
            print(result.message)
            exit()



class UtilityParser(TextParsers):
    generics = (NameParser.classname & '<') >> repsep(TypeParser.genArgs, ',') << ('>' & opt('(' >> repsep(MethodParser.params, ',') << ')'))

    @classmethod
    def parse_generics(cls, datatype):
        result = UtilityParser.generics.parse(datatype)
        if isinstance(result, Success):
            return result.value
        else:
            return None


class ILParser(TextParsers):
    Decl = ClassParser.class_ << '{' & rep(ClassParser.classMembers_) << '}' > splat(Container.add_members)
    ILDocument = rep(Decl)



def parse_text(text, path=None):
    text = re.sub(COMMENT, '', text)
    res = ILParser.ILDocument.parse(text)
    if isinstance(res, Success):
        outers = {}
        for cls in res.value:
            outers[cls.get_qualifying_name()] = cls
        return outers
    else:
        if path:
            print('=' * 15, path, '=' * 15)
        print(res.message)
        exit()


def parse_file(path):
    text = open(path, 'r', encoding='utf-8').read()
    return parse_text(text, path)
