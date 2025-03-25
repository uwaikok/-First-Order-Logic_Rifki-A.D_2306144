bigger(gajah,kuda).
 bigger(kuda,kedelai).
 bigger(keledai,anjing).
 bigger(keledai,monyet).

 is_bigger(X,Y) :- bigger(X,Y).
 is_bigger(X,Y) :- bigger(Y,Z),is_bigger(Z,Y).
