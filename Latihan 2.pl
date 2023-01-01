% MANIPULASI LIST

find(X,X):- find(X,X).
findLast(X, [H|_]) :- find(X,H).

findSecondLast(X,[X,_]).
findSecondLast(X,[_|T]) :- findSecondLast(X,T).

findAt(1,X,[X|_]).
findAt(E,X,[_|T]):- K is E-1,findAt(K,X,T).

findLength(X, [H|T]):- countLength(X,[H|T],0).
countLength(X,[],X).
countLength(X,[_|T],C) :- D is C+1,countLength(X,T,D).

linearList([],[]).
linearList(H,[H]):- not(is_list(H)).
linearList([H|T],Z):- linearList(H,X), linearList(T,Y),append(X,Y,Z).

pindah(X,[],[],[X]).
pindah(X,[H|T],[H|T],[X]):- X\= H.
pindah(X,[X|T],Y,[X|T1]):- pindah(X,T,Y,T1).
subList([],[]).
subList([H|T],[H1|T1]):- pindah(H,T,X,H1), subList(X,T1).

ubah([],[]).
ubah([[X|Xt]|Y],[[N,X]|Z]):- length([X|Xt],N), ubah(Y,Z).
lengthSublist(X1,X2):- subList(X1,X), ubah(X,X2).

lengthToList([],[]).
lengthToList([[1,X]|Xt],[X|T]):- lengthToList(Xt,T).
lengthToList([[N,X]|Xt],[X|T]):- N>0, K is N-1,
    lengthToList([[K,X]|Xt],T).

