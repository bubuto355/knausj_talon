slap:
	edit.line_end()
	key(enter)
cod: "cd "
cod talon: "cd ~/.talon/user/knausj_talon"
talon: "talon"
grep: "grep "
less: "ls "
run (S S H | S H): "ssh"
vim run : "vim "
run make (durr | dear): "mkdir "
args: 
	insert("()")
	key(left)
braces: "[]"
list in it: 
	insert("[]") 
	key(left)
(dickt in it | inside bracket | in bracket): 
	insert("{}") 
	key(left)
block: 
	insert("{}") 
	key(left enter enter up tab)
angles:
        insert('<>')
        key(left)
(page | scroll) up: key(pgup)
(page | scroll) down: key(pgdown)
copy that: edit.copy()
cut that: edit.cut()
paste that: edit.paste()
paste match: edit.paste_match_style()
file save: edit.save()
undo: edit.undo()
redo that: edit.redo()
delete: key(backspace)



