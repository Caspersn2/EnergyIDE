import re


class field():
    field_instruction = r'\.field.+'


    def __init__(self, name, datatype, is_static) -> None:
        self.name = name
        self.datatype = datatype
        self.is_static = is_static
        self.value = None


    def set_value(self, value):
        self.value = value


    def has_value(self):
        return self.value is not None


    def get_value(self):
        return self.value



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
        if '=' in elements:
            *_, datatype, name, __, value = elements
            new_field = field(name, datatype, is_static)
            new_field.set_value(value)
            fields[name] = new_field
        else:
            *_, datatype, name = elements
            fields[name] = field(name, datatype, is_static)
    return fields