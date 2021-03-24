import re


class field():
    field_instruction = r'\.field.+'


    def __init__(self, name, datatype, is_static) -> None:
        self.name = name
        self.datatype = datatype
        self.is_static = is_static


def get_fields(text, start, length):
    fields = {}
    total_length = start + length
    nested_starts = re.search(r'\.class', text[total_length:])
    end = len(text)
    if nested_starts:
        end = nested_starts.start() + total_length
    matches = re.finditer(field.field_instruction, text[:end])
    for match in matches:
        elements = match.group().split()
        is_static = 'static' in elements
        *_, datatype, name = elements
        fields[name] = field(name, datatype, is_static)
    return fields