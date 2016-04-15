#ifndef DEF_DEF2
#define DEF_DEF2

#include <stdio.h> 
#include <stdlib.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <string.h>
#include <pthread.h>
#include <errno.h>


enum{MIN, MAX, SUM, AVG, ODD};

struct inf{
	int fd;					//descripteur du fichier sur lequel on travail
	double *retour;			//stocker le resultat du calcul
	pthread_mutex_t mut_fic;//pour protéger la lecture du fichier
	pthread_mutex_t mut_ret;//pour protéger la valeur de retour
};
typedef struct inf inf;


#endif
