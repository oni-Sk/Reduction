all: reduction
	make clean

run:	reduction
		./reduction

reduction: donnees.o fonctions.o chef.o directeur.o main.o
			gcc -g -Wall main.o chef.o fonctions.o directeur.o donnees.o -o reduction -lpthread

main.o:	main.c 	directeur.h  
		gcc -c -g -Wall main.c

directeur.o:	directeur.c directeur.h
				gcc -c -g -Wall directeur.c

chef.o: 	chef.c 	chef.h
				gcc -c -g -Wall chef.c

fonctions.o:	fonctions.c fonctions.h donnees.h
				gcc -c -g -Wall fonctions.c

donnees.o: donnees.c donnees.h
				gcc -c -g -Wall donnees.c

clean:
	rm *.o
	
mrproper:
	rm reduction
	rm resultats.txt
