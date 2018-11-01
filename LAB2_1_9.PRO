domains
  n = integer
predicates
  lastnum(n, n)
clauses
  lastnum(X, Y):- Y = X mod 10. 
%goal
  %lastnum(14, Y).