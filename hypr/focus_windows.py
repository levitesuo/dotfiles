import json
import re
import subprocess
import sys

with subprocess.Popen(
    ["hyprctl", "activeworkspace", "-j"], stdout=subprocess.PIPE
) as proc:
    ret = proc.stdout.read().decode("utf-8")
    active_workspace_id = json.loads(ret)["id"]

with subprocess.Popen(["hyprctl", "clients", "-j"], stdout=subprocess.PIPE) as proc:
    ret = proc.stdout.read().decode("utf-8")
    windows = json.loads(ret)

if len(sys.argv) < 2:
    sys.exit("The program must be called wits one or two arguments.")

window_class = sys.argv[1]

print(type(windows), len(windows))

windows_with_class = list(filter(lambda x: x["class"] == window_class, windows))
windows_on_the_workspace = list(
    filter(lambda x: x["workspace"]["id"] == active_workspace_id, windows_with_class)
)

if len(sys.argv) == 3:
    print(sys.argv[2])
    windows_with_regex = list(
        filter(lambda x: re.match(sys.argv[2], x["title"]), windows_on_the_workspace)
    )
    wanted_windows = windows_with_regex
else:
    wanted_windows = windows_with_class


def focus_history(e):
    if e["focusHistoryID"] == 0:
        return 100
    return e["focusHistoryID"]


wanted_windows.sort(key=focus_history)

subprocess.run(
    ["hyprctl", "dispatch", "focuswindow", f"address:{wanted_windows[0]['address']}"]
)
