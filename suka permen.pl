anakibu(andi).
 anakibu(budi).
 anakibu(cika).
 anakibu(dani).
 anakibu(emil).
 not(anakibu(fadil)).

 sukapermen(andi).
 sukapermen(budi).
 sukapermen(cika).
 not(sukapermen(dani)).
 not(sukapermen(email)).

 siapa_saja(X) :- anakibu(X).
 dapatpermen(X) :- anakibu(X), sukapermen(X).
 dapatUang(X):-anakibu(X),not(sukapermen(X)).
 tidakdapatapaapapa(X):- not(anakibu(X)).
