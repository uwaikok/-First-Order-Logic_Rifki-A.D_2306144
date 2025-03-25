menikah(david, amy).
menikah(jack, karen).
menikah(john, susan).

ayah(david, liza).
ibu(amy, liza).
ayah(david, john).
ibu(amy, john).

ayah(jack, ray).
ibu(karen, ray).
ayah(jack, susan).
ibu(karen,susan).

ayah(john, peter).
ibu(susan, peter).
ayah(john, mary).
ibu(susan, mary).

pria(david).
pria(jack).
pria(john).
pria(ray).
pria(peter).

wanita(amy).
wanita(karen).
wanita(susan).
wanita(liza).
wanita(mary).

orangtua(X, Y) :- ayah(X, Y).
orangtua(X, Y) :- ibu(X, Y).

anak(X, Y) :- orangtua(Y, X).

saudara(X, Y) :- orangtua(Z, X), orangtua(Z, Y), X \= Y.

kakek(X, Y) :- pria(X), orangtua(X, Z), orangtua(Z, Y).

nenek(X, Y) :- wanita(X), orangtua(X, Z), orangtua(Z, Y).

cucu(X, Y) :- orangtua(Y, Z), orangtua(Z, X).

paman(X, Y) :- pria(X), saudara(X, Z), orangtua(Z, Y).
tante(X, Y) :- wanita(X), saudara(X, Z), orangtua(Z, Y).
