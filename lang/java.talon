title: /java/
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic

logical and: " && "
logical or: " || "
state equals: " == "
state assign: " = "
state leek: " <= "
state greek: " >= "
state not equals: " != "
state times equals: " *= "
state plus equals: " += "
state minus equals: " -= "
state comment: "// "
state new:
        insert('new ')
state if:
    insert("if () ")
    key(left)
    key(left)
state liff:
    insert("else if () ")
    key(left)
	key(left)
state else:
	insert("else {")
        key(enter)
state switch:
    insert("switch () ")
    key(left)
	edit.left()
state case:
	insert("case \nbreak;")
	edit.up()
state for:
    insert('for (int i = 0; i < ; i++) {')
        key(enter)
        key(up right right right right right right right right right right right right right right right right )
state well:
    insert("while () ")
    edit.left()
	edit.left()
state private:
	insert("private ")
state protected:
        insert("protected ")
state public:
	insert("public ")
state return:
    insert("return ")
state print:
        insert('System.out.println();')    
        key(left)
        key(left)
state break: 
insert('break;')
    key(enter)  
state string:
        insert('String ')
state int:
        insert('int ')
state arraylist:
        insert('ArrayList')
state linkedlist:
        insert('LinkedList')
state hashmap:
        insert('HashMap')
state instanceof:
        insert('instanceof ')
action complete:
        key(alt shift enter)

