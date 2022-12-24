app: windows_terminal
-
tag(): user.tabs
tag(): terminal 
tag(): user.git
tag(): user.terraform_client

# activates the implementation of the commands/functions in terminal.talon
tag(): user.generic_windows_shell

# makes commands for certain applications available
# you can deactivate them if you do not use the application
tag(): user.git


tag(): user.tabs
# TODO: file_manager
tag(): user.splits

settings open: key(ctrl-,)
focus left: key(ctrl-alt-shift-left)
focus right: key(ctrl-alt-shift-right)
focus up: key(ctrl-alt-shift-up)
focus down: key(ctrl-alt-shift-down)
term menu: key(ctrl-shift-f1)
#page up: key(shift-ctrl-pgup)

find it: edit.find()

find it <phrase>$:
    # handle consecutive finds by first escaping out of any previous one
    key(escape)
    # make it so
    edit.find("{phrase}\n")

# Navigation
list directory:"ls "
change directory:"cd "
change root:"cd \\"
source:"src"
slun:"sln"

# Applications
code:"code "
new code:
    "code . -n"
    key(enter)

north:key(up)
south:key(down)
tug:key(left)
push:key(right)

find solutions:
  "*sln"
  key(ctrl-space)

tab rename:key(ctrl-t)
take all:key(shift-ctrl-a)
