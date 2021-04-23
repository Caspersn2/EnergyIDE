import yaml
from instruction import instruction_rule

def constructor(loader, node):
    fields = loader.construct_mapping(node)
    return instruction_rule(**fields)

def load(path):
    yaml.add_constructor('!Inst', constructor)
    text = open(path, 'r').read()
    data = yaml.load(text, Loader=yaml.Loader)
    return {item.name: item for item in data}