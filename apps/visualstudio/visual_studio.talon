
app: visual_studio
-
tag(): user.tabs
tag(): user.line_commands
tag(): user.find_and_replace
tag(): user.snippets
tag(): user.multiple_cursors
#multiple_cursor.py support end

# Panels
panel solution: key(ctrl-alt-l)
panel properties: key(f4)
panel output: key(ctrl-alt-o)
panel class: key(ctrl-shift-c)
panel errors: key(ctrl-\ ctrl-e)
panel design: key(shift-f7)
panel marks: key(ctrl-k ctrl-w)
panel breakpoints: key(ctrl-alt-b)
panel terminal: key(ctrl-')
panel test: key(ctrl-alt-r)
panel error:key(ctrl-\ ctrl-e)
panel command:user.run_rpc_command("VSCommand","View.CommandWindow")
git changes:user.run_rpc_command("VSCommand","Team.Git.GoToGitChanges")
panel close:user.run_rpc_command("VSCommand","Window.Close")


#Tabs
tab next:user.run_rpc_command("VSCommand","Window.NextTab")
tab back:user.run_rpc_command("VSCommand","Window.PreviousTab")

#splits
cross:user.run_rpc_command("VSCommand","Window.NextDocumentWindow")

# Settings
show settings: key(alt-t o)
show context:key(shift-f10)
#show shortcuts:
#show snippets:

# Display
fullscreen: key(shift-alt-enter)
wrap switch: key(ctrl-e ctrl-w)

# File Commands
file hunt [<user.text>]:
    key(ctrl-shift-t)
    insert(text or "")

#file open folder:
file rename: key(ctrl-[ s f2)
file reveal: key(ctrl-[ s)

# Language Features
hint show: key(ctrl-shift-space)
definition peek: key(alt-f12)
format that: key(ctrl-alt-enter)
fix format: key(ctrl-k ctrl-f)
imports fix: key(ctrl-r ctrl-g)
clean code:key(ctrl-alt-f)

# problem next:
# problem last:
# problem fix:
ref field: key(ctrl-r ctrl-e)
ref interface: key(ctrl-r ctrl-i)
ref method: key(ctrl-r ctrl-m)
ref reorder parameters: key(ctrl-r ctrl-o)
ref remove parameters: key(ctrl-r ctrl-v)
ref rename: key(ctrl-r ctrl-r)
ref parameter:key(ctrl-alt-p)
ref var:user.run_rpc_command("VSCommand","ReSharper.ReSharper_IntroVariable")
ref type hints: user.run_rpc_command("VSCommand","ReSharper_ToggleInlayHints") 
test run all: tests:user.run_rpc_command("VSCommand","ReSharper.ReSharper_UnitTestRunSolution")
test run: user.run_rpc_command("VSCommand","ReSharper.ReSharper_UnitTestRunFromContext")  
test debug: user.run_rpc_command("VSCommand","ReSharper.ReSharper_UnitTestDebugContext")

# code navigation
all references:user.run_rpc_command("VSCommand","Edit.FindAllReferences")   
(go declaration | follow): key(ctrl-b)
go def: :user.run_rpc_command("VSCommand","Edit.GotoDefinition")
go back: key(ctrl--)
go forward: key(ctrl-shift--)
go implementation: key(ctrl-f12)
go recent:
    # Resharper
    key(ctrl-e)
go type [<user.text>] :
    # Resharper
    key(ctrl-t)
    sleep(100ms)
    insert(text or "")
go member [<user.text>]:
    key(alt-\)
    sleep(100ms)
    insert(text or "")
go usage: key(shift-f12)
member next:key(alt-down)
member last:key(alt-up)
item next:key(f8)
issue next:key(f12)
next error:user.run_rpc_command("VSCommand","View.NextError")
previous error:user.run_rpc_command("VSCommand","View.PreviousError")


# Bookmarks.
go (bookmarks |marks): key(ctrl-k ctrl-w)
toggle (bookmark |mark): key(ctrl-k ctrl-k)
[go] next (bookmark |mark): key(ctrl-k ctrl-n)
[go] last (bookmark |mark): key(ctrl-k ctrl-p)

# Folding
toggle fold: key(ctrl-m ctrl-m)
fold toggle all: key(ctrl-m ctrl-l)
fold definitions: key(ctrl-m ctrl-o)

#Debugging
toggle break: key(f9)
step over: key(f10)
step into: key(f11)
step out [of]: key(f10)
debug start: key(f5)
debug stop: user.run_rpc_command("VSCommand","Debug.StopDebugging")
run to cursor:user.run_rpc_command("VSCommand","Debug.RunToCursor")

debug continue: key(f5)

# Tests
test run: key(ctrl-t ctrl-r)
test debug: key(ctrl-t ctrl-d)

# Person
ref gen: user.run_rpc_command("VSCommand","ReSharper.ReSharper_Generate") 


action list:key(alt-enter)

# show
show explorer:user.run_rpc_command("VSCommand","ReSharper.ReSharper_LocateInSolutionOrAssemblyExplorer")
solution explorer:user.run_rpc_command("VSCommand","ReSharper.ReSharper_LocateInSolutionOrAssemblyExplorer")
  
complete:key(ctrl-space)

build this: key(shift-ctrl-b)
comment that:key(ctrl-k ctrl-c)
uncomment that:key(ctrl-k ctrl-u)
code insert:key(alt-i)
extend:key(ctrl-w)

indent : user.run_rpc_command("VSCommand", "ReSharper_Reindent")

show tabs: user.run_rpc_command("VSCommand","Window.Windows")

# scout <user.cursorless_target>:
#   user.cursorless_command("setSelection", cursorless_target)
#   user.run_rpc_command("VSCommand","Edit.Find")
