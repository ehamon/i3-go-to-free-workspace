# i3-go-to-free-workspace

i3-keybindings to jump to the next left or right free workspace.

## Requirements

* [i3-wm](https://i3wm.org/)
* [jq](https://stedolan.github.io/jq/)

## Installation

Copy the 2 scripts in your i3 config tree.

## Configuration

Copy/paste and adapt those two lines in your i3 config file.

```
bindsym $mod+less exec --no-startup-id ~/.config/i3/scripts/goto_empty_workspace_on_right.bash
bindsym $mod+control+less exec --no-startup-id ~/.config/i3/scripts/goto_empty_workspace_on_left.bash
```

## Executing

`mod + >` go to the next free workspace on the right side of the current workplace.

`mod + control + >` go to the next free workspace on the left side of the current workplace.

