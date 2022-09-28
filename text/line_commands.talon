tag: user.line_commands
-
#this defines some common line commands. More may be defined that are ide-specific.

go <number>: edit.jump_line(number)
go <number> end:
    edit.jump_line(number)
    edit.line_end()
comment [line] <number>:
    user.select_range(number, number)
    code.toggle_comment()
comment <number> (until |thru) <number>:
    user.select_range(number_1, number_2)
    code.toggle_comment()
clear [line] <number>:
    edit.jump_line(number)
    user.select_range(number, number)
    edit.delete()
clear <number> (until | thru) <number>:
    user.select_range(number_1, number_2)
    edit.delete()
copy [line] <number>:
    user.select_range(number, number)
    edit.copy()
copy <number> (until | thru) <number>:
    user.select_range(number_1, number_2)
    edit.copy()
cut [line] <number>:
    user.select_range(number, number)
    edit.cut()
cut [line] <number> (until | thru) <number>:
    user.select_range(number_1, number_2)
    edit.cut()
(paste | replace) <number> (until | thru) <number>:
    user.select_range(number_1, number_2)
    edit.paste()
(select | cell | sell) [line] <number>: user.select_range(number, number)
(select | cell | sell) <number> (until | thru) <number>: user.select_range(number_1, number_2)
ident : edit.indent_more()
ident [line] <number>:
    edit.jump_line(number)
    edit.indent_more()
ident <number> (until|thru) <number>:
    user.select_range(number_1, number_2)
    edit.indent_more()
dedent : edit.indent_less()
dedent [line] <number>:
    user.select_range(number, number)
    edit.indent_less()
dedent <number> (until|thru) <number>:
    user.select_range(number_1, number_2)
    edit.indent_less()
drag [line] down: edit.line_swap_down()
drag [line] up: edit.line_swap_up()
drag up [line] <number>:
    user.select_range(number, number)
    edit.line_swap_up()
drag up <number> until <number>:
    user.select_range(number_1, number_2)
    edit.line_swap_up()
drag down [line] <number>:
    user.select_range(number, number)
    edit.line_swap_down()
drag down <number> until <number>:
    user.select_range(number_1, number_2)
    edit.line_swap_down()
clone (line | that): edit.line_clone()

take camel drain: user.extend_camel_left()
take camel step: user.extend_camel_right()
drain camel: user.camel_left()
step camel: user.camel_right()
