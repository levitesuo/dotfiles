#!/usr/bin/env python3

import os
import subprocess
import sys

if len(sys.argv) < 2:
    with os.scandir("/home/leevisuo/Projects/") as it:
        for entry in it:
            if entry.is_dir():
                icon_name = ""
                project_path = os.path.join("/home/leevisuo/Projects/", entry.name)
                files = os.listdir(project_path)
                if "pyproject.toml" in files or any(f.endswith(".py") for f in files):
                    icon_name = "python"
                elif "Cargo.toml" in files or any(f.endswith(".rs") for f in files):
                    icon_name = "rust"
                elif "go.mod" in files or any(f.endswith(".go") for f in files):
                    icon_name = "go"
                elif any(f.endswith(".java") for f in files):
                    icon_name = "java"
                elif any(f.endswith(".sh") for f in files):
                    icon_name = "bash"
                elif any(f.endswith(".ts") for f in files):
                    icon_name = "typescript"
                elif any(f.endswith(".php") for f in files):
                    icon_name = "php"
                elif any(f.endswith(".rb") for f in files):
                    icon_name = "ruby"
                elif any(f.endswith(".lua") for f in files):
                    icon_name = "lua"
                else:
                    icon_name = "folder-code"
                print(f"{entry.name}\0icon\x1f{icon_name}")
        print(f"config\0icon\x1fconfigurator")
    sys.exit(0)

project = sys.argv[1]
if project == "config":
    with open("/home/leevisuo/.config/hypr/CWD", "w") as f:
        f.write("/home/leevisuo/.config")
else:
    with open("/home/leevisuo/.config/hypr/CWD", "w") as f:
        f.write(f"/home/leevisuo/Projects/{project}")
