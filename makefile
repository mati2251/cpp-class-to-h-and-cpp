DECLARATION_DESC_FILE=declarations.l
DEFINITION_DESC_FILE=definitions.l
DECLARATION_EXEC_FILE=declarations.out
DEFINITION_EXEC_FILE=definitions.out

all: $(DECLARATION_EXEC_FILE) $(DEFINITION_EXEC_FILE)

$(DECLARATION_EXEC_FILE): lex.yy.c
	gcc -o $(DECLARATION_EXEC_FILE) lex.yy.c

$(DEFINITION_EXEC_FILE): lex.yy.c
	gcc -o $(DEFINITION_EXEC_FILE) lex.yy.c

lex.yy.c: $(DECLARATION_DESC_FILE)
	flex -l $(DECLARATION_DESC_FILE)

definitions.lex.yy.c: $(DEFINITION_DESC_FILE)
	flex -l $(DEFINITION_DESC_FILE)

clean:
	rm -f lex.yy.c definitions.lex.yy.c $(DECLARATION_EXEC_FILE) $(DEFINITION_EXEC_FILE)
