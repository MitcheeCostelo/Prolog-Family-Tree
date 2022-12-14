male(mitchee).
male(ernie).
male(william).
male(chuck).
male(chris).
male(alan).
male(devin).
male(carlos).
male(victor).
male(alexsis).
male(jeremy).
male(sean).

female(miyukee).
female(cynthia).
female(claire).
female(allie).
female(mora).
female(marie).
female(vicky).
female(angelynn).
female(susan).
female(lara).
female(jen).

parent_of(ernie, mitchee).
parent_of(cynthia, mitchee).
parent_of(ernie, miyukee).
parent_of(cynthia, miyukee).
parent_of(william, cynthia).
parent_of(claire, cynthia).
parent_of(chuck, ernie).
parent_of(allie, ernie).
parent_of(chris, chuck).
parent_of(mora, chuck).
parent_of(alan, allie).
parent_of(marie, allie).
parent_of(devin, william).
parent_of(vicky, william).
parent_of(carlos, claire).
parent_of(angelynn, claire).
parent_of(william, susan).
parent_of(claire, susan).
parent_of(victor, alexsis).
parent_of(susan, alexsis).
parent_of(sean, victor).
parent_of(lara, victor).
parent_of(sean, jeremy).
parent_of(lara, jeremy).
parent_of(sean, jen).
parent_of(lara, jen).

married_to(ernie, cynthia).
married_to(cynthia, ernie).
married_to(victor, susan).
married_to(susan, victor).
married_to(chuck, allie).
married_to(allie, chuck).
married_to(william, claire).
married_to(claire, william).
married_to(chris, mora).
married_to(mora, chris).
married_to(alan, marie).
married_to(marie, alan).
married_to(devin, vicky).
married_to(vicky, devin).
married_to(carlos, angelynn).
married_to(angelynn, carlos).
married_to(sean, lara).
married_to(lara, sean).

father_of(X, Y) :- parent_of(X, Y), male(X).
mother_of(X, Y) :- parent_of(X, Y), female(X).
son_of(X, Y) :- parent_of(Y, X), male(X).
daughter_of(X, Y) :- parent_of(Y, X), female(X).

sibling_of(X, Y) :- parent_of(Z, X), parent_of(Z, Y).
brother_of(X, Y) :- male(X), parent_of(Z, X), parent_of(Z, Y).
sister_of(X, Y) :- female(X), parent_of(Z, X), parent_of(Z, Y).

grandparent_of(X,Y) :- parent_of(X, Z), parent_of(Z, Y).
ancestor_of(X, Y) :- parent_of(X, A), parent_of(A, B), parent_of(B, Y).

uncle_of(X, Y) :- male(X), parent_of(Z, Y), brother_of(X, Z); male(X), married_to(X, A), sibling_of(A, B), parent_of(B, Y).
aunt_of(X, Y) :- female(X), parent_of(Z, Y), sister_of(X, Z); female(X), married_to(X, A), sibling_of(A, B), parent_of(B, Y).
cousin_of(X, Y) :- parent_of(A, X), parent_of(B, Y), sibling_of(A, B).

brother_in_law_of(X, Y) :- married_to(X, A), sibling_of(A, B), married_to(B, Y); married_to(X, A), sister_of(A, Y); sister_of(X, A), married_to(A, Y).
sister_in_law_of(X, Y) :- married_to(Y, A), sibling_of(A, B), married_to(B, X); married_to(Y, A), sister_of(A, X); brother_of(Y, A), married_to(A, X).

father_in_law_of(X, Y) :- male(X), parent_of(X, Z), married_to(Z, Y).
mother_in_law_of(X, Y) :- female(X), parent_of(X, Z), married_to(Z, Y).
