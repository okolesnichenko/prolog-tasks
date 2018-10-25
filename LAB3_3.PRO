domains
  n = integer
predicates
  action(integer)
clauses
  action(1):- write(1), nl, !.
  action(N):- write(N), nl, N1=N-1, action(N1).
%goal
%action(10)
