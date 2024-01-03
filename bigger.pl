bigger(ant, flea).
bigger(mouse, ant).
bigger(cat, mouse).
bigger(horse, cat).
bigger(whale, horse).

bigger_than(A, B) :-
  bigger(A, B).

bigger_than(A, B) :-
  bigger(A, C),
  write(C),
  
  bigger_than(C, B).

much_bigger_than(A, B) :-
  bigger_than(A, X),
  bigger_than(X, Y),
  bigger_than(Y, B).

in_between(BIG, SMALLER, MIDDLE) :-
  bigger_than(BIG,MIDDLE),
  bigger_than(MIDDLE,SMALLER).
