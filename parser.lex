%%

[s]	{ printf("\t>>Same file exits, Size is different \n"); }
[t|T]	{ printf("\t>>Same file exits, Modification time is different \n"); }

[\ ]	{ exit(0) ; }
.

%%

