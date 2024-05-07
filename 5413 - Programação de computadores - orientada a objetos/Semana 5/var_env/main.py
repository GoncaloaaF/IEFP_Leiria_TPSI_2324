import os

print(os.environ.get("teste"))

os.environ["teste"] = "var criada em py"
os.environ.__setitem__("teste", "var criada em py")

print(os.environ.get("teste"))

