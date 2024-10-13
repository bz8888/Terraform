from jinja2 import Environment, FileSystemLoader

azure = [
    {"name": "azure1",  "location": "east-us-1", "address": "10.10.124.73"},
    {"name": "azure2",  "location": "east-us-2", "address": "10.10.124.74"},
    {"name": "azure3",  "location": "east-us-3", "address": "10.10.124.75"},
    {"name": "azure4",  "location": "east-west-1", "address": "10.10.124.77"},
    {"name": "azure5",  "location": "east-west-2", "address": "10.10.124.78"},
    {"name": "azure6",  "location": "east-west-3", "address": "10.10.124.79"},
]

environment = Environment(loader=FileSystemLoader("template/"))
template = environment.get_template("main.tf")

for data in azure:
    filename = f"{data['name'].lower()}.tf"
    content = template.render(
        data,
    )
    with open(filename, mode="w", encoding="utf-8") as message:
        message.write(content)
        print(f"... wrote {filename}")
