%Family Tree

male(imanda).
male(ababil).
male(iqbal).
male(rangga).
male(aji).
male(dedik).
male(vicky).
female(adin).
female(cika).
female(dewi).
female(layla).

orangtua(ababil, adin).
orangtua(robert, layla).
orangtua(imanda, adin).
orangtua(iqbal, cika).
orangtua(cika, aji).
orangtua(aji, rangga).
orangtua(aji, dewi).

ayah(X,Y) :- male(X), orangtua(X,Y).
ibu(X,Y) :- female(X), orangtua(X,Y).
kakek(X,Y) :- male(X), orangtua(X,Y).

