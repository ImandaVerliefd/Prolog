
kali(X,1,X):- !.
kali(X,Y,Z):- K is Y-1, kali(X,K,21), Z is X+21.

pangkat(X,1,X):- !.
pangkat(X,Y,Z):- K is Y-1, pangkat(X,K,21), Z is X*21.

fpb(X,0,X):- !.
fpb(0,Y,Y):- !.
fpb(X,Y,Z):- X>Y, A is mod(X,Y), fpb(A,Y,Z).
fpb(X,Y,Z):- X<Y, A is mod(Y,X), fpb(X,A,Z).

faktorial(1,1):- !.
faktorial(X,Y):- K is X-1, faktorial(K,Y1), Y is Y1*X.
