find it:
    edit.find()

next one:
    edit.find_next()

drain:
    edit.word_left()

step:
    edit.word_right()

tug:
    edit.left()

push:
    edit.right()

north:
    edit.up()

south:
    edit.down()

head:
    edit.line_start()

tail:
    edit.line_end()

go way left:
    edit.line_start()

go way right:
    edit.line_end()

go way down:
    edit.file_end()

go way up:
    edit.file_start()

go bottom:
    edit.file_end()

go top:
    edit.file_start()

go page down:
    edit.page_down()

go pbage up:
    edit.page_up()

# selecting
take line:
    edit.select_line()

select all:
    edit.select_all()

take tug:
    edit.extend_left()

take push:
    edit.extend_right()

take up:
    edit.extend_line_up()

take down:
    edit.extend_line_down()

take word:
    edit.select_word()

take drain:
    edit.extend_word_left()

take step:
    edit.extend_word_right()

take head:
    edit.extend_line_start()

take tail:
    edit.extend_line_end()

take way up:
    edit.extend_file_start()

take way down:
    edit.extend_file_end()

# editing
indent [more]:
    edit.indent_more()

(indent less | dedent):
    edit.indent_less()

# deleting
clear line:
    edit.delete_line()

clear tug:
    key(backspace)

clear pusht:
    key(delete)

clear north:
    edit.extend_line_up()
    edit.delete()

clear south:
    edit.extend_line_down()
    edit.delete()

clear word:
    edit.delete_word()

clear drain:
    edit.extend_word_left()
    edit.delete()

clear step:
    edit.extend_word_right()
    edit.delete()

clear head:
    edit.extend_line_start()
    edit.delete()

clear tail:
    edit.extend_line_end()
    edit.delete()

clear way up:
    edit.extend_file_start()
    edit.delete()

clear way down:
    edit.extend_file_end()
    edit.delete()

clear all:
    edit.select_all()
    edit.delete()

#copy commands
copy all:
    edit.select_all()
    edit.copy()
#to do: do we want these variants, seem to conflict
# copy left:
#      edit.extend_left()
#      edit.copy()
# copy right:
#     edit.extend_right()
#     edit.copy()
# copy up:
#     edit.extend_up()
#     edit.copy()
# copy down:
#     edit.extend_down()
#     edit.copy()

copy word:
    edit.select_word()
    edit.copy()

copy drain:
    edit.extend_word_left()
    edit.copy()

copy step:
    edit.extend_word_right()
    edit.copy()

copy line:
    edit.select_line()
    edit.copy()

#cut commands
cut all:
    edit.select_all()
    edit.cut()
#to do: do we want these variants
# cut left:
#      edit.select_all()
#      edit.cut()
# cut right:
#      edit.select_all()
#      edit.cut()
# cut up:
#      edit.select_all()
#     edit.cut()
# cut down:
#     edit.select_all()
#     edit.cut()

cut word:
    edit.select_word()
    edit.cut()

cut drain:
    edit.extend_word_left()
    edit.cut()

cut step:
    edit.extend_word_right()
    edit.cut()

cut line:
    edit.select_line()
    edit.cut()
