all:
	lex CS315f22_team21.l
	yacc CS315f22_team21.y
	gcc -o parser y.tab.c
	./parser < CS315f22_team21_test1.txt
	./parser < CS315f22_team21_test2.txt
	./parser < CS315f22_team21_test3.txt
	./parser < CS315f22_team21_test4.txt
	./parser < givesErrorAtLine8.txt
clean:
	rm lex.yy.c
	rm y.tab.c
	rm parser
