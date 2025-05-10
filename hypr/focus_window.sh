#!/bin/bash

active_workspace=$(hyprctl activeworkspace -j | jq '.id')
window_class="$1"

echo "$window_class"
echo "$active_workspace"
if [ -z "$2" ]; then
    windows=$(hyprctl clients -j | jq ".[] | select(.class == \"$window_class\" and .workspace.id == $active_workspace)")
else
    regex="$2"
    echo "$regex"
    windows=$(hyprctl clients -j | jq ".[] | select(.class == \"$window_class\" and .workspace.id == $active_workspace)" | jq ".|select(.title | test(\"$regex\")")
fi

echo "$windows"
