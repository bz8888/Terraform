# Bill Zhou
# Script to genetare multiple .TF files
# Input file input.json
# Syntax: python3 azure.py
# 11/01/2024

from jinja2 import Environment, FileSystemLoader

import os
import json
import numpy as np

with open("input.json", "r") as file:
  data = json.load(file)
  arr = np.atleast_1d(data)
  print (arr)


environment = Environment(loader=FileSystemLoader("templates/"))
template = environment.get_template("locals.tf")

directory_name = "Output"
print(directory_name)
os.chdir(directory_name)

for element in data:
    filename = f"{element['app_id']}.tf"
    content = template.render(
        element,
    )
    with open(filename, mode="w", encoding="utf-8") as message:
         message.write(content)
         print(f"... wrote {filename}")