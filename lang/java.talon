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
    insert('fori' )
    sleep(200ms)   
    key(enter)
    key(right right right right right right right right right right)
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
       sleep(200ms) 
        key(enter)
       insert('<>') 
       key(left)

state linkedlist:
        insert('LinkedList')
       sleep(200ms) 
        key(enter)
       insert('<>') 
       key(left)
state hashmap:
        insert('HashMap')
       sleep(200ms) 
        key(enter)
       insert('<>') 
       key(left)
state instanceof:
        insert('instanceof ')
