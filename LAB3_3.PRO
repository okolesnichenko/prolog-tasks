domains
  col = symbol
  name = symbol
predicates
  nondeterm girl(name)
  nondeterm color(col)
  nondeterm fullset(name, col, col)
clauses
  girl(anya).
  girl(valya).
  girl(natasha).
  color(white).
  color(blue).
  color(green).
  fullset(Name, Dress, Shoes):- girl(Name), color(Shoes), color(Dress), Name = natasha, Shoes = green, Shoes <> Dress,
  				not(fullset(anya, Dress, _)).
  fullset(Name, Dress, Shoes):- girl(Name), color(Shoes), color(Dress), Name = anya, Shoes = Dress,
  				not(fullset(natasha, _, Shoes)), not(fullset(valya, _, Shoes)).
  fullset(Name, Dress, Shoes):- girl(Name), color(Shoes), color(Dress), Name = valya, not(Shoes = white), not(Dress = white), Shoes <> Dress,
  				not(fullset(natasha, _, Shoes)).  
%goal
 %fullset(Name, Dress, Shoes).