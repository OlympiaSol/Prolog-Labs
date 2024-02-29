
%-----------------------------------------------------------------------------------------

%-- ASKHSH 1

winnerAtHome(C) :- host(a,C),final(a,C,d).

sameContinent(Y) :- year(a,Y),final(n,b,d),continent(b,D),continent(d,D).

threeFinals(C) :- final(a,C,d),e is n+1,two(C,e).
threeFinals(C) :- final(a,d,C),e is n+1,two(C,e).

two(C,e) :- final(e,C,R),m is e+1,one(C,m).
two(C,e) :- final(e,d,C),m is e+1,one(C,m).

one(C,m) :- final(m,C,d).
one(C,m) :- final(m,d,C).

threeContinents(Y1,Y2) :- oneContinent(Y1,Y2,D1),oneContinent(Y1,Y2,D2),oneContinent(Y1,Y2,D3),D1 @< D2, D2 @< D3.
oneContinent(Y1,Y2,D) :- year(n,Y),Y>=Y1,Y=<Y2,host(n,C),continent(C,D).





%-----------------------------------------------------------------------------------------

%-- ASKHSH 2

path(X,Y) :- link(X,Y).
path(X,Y) :- link(X,Z), path(Z,Y).

biconnected(X,Y) :- link(X,Y), path0(X,Y).

path0(X,Y):-link(X,Z),link(Z,Y).
path0(X,Y):-link(X,Z),link(Z,Z1),path1(Z1,Y).
path1(Z1,Y):-link(Z1,Y).
path1(Z1,Y):-link(Z1,Z2),path1(Z2,Y).

meetpoint(S1,D1,S2,D2,X) :- source(S1),destination(D1),source(S2),destination(D2),help(S1,D1,X), help(S2,D2,X).
help(S,D,X):- path(S,X),path(X,D).



%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------

%-- MHN TROPOPOIHSETE TO PARAKATW TMHMA KWDIKA 


dif(X,Y) :- X \= Y.

year(1,1930).
year(2,1934).
year(3,1938).
year(4,1950).
year(5,1954).
year(6,1958).
year(7,1962).
year(8,1966).
year(9,1970).
year(10,1974).
year(11,1978).
year(12,1982).
year(13,1986).
year(14,1990).
year(15,1994).
year(16,1998).
year(17,2002).
year(18,2006).
year(19,2010).
year(20,2014).
year(21,2018).
year(22,2022).

host(1,'Uruguay').
host(2,'Italy').
host(3,'France').
host(4,'Brazil').
host(5,'Switzerland').
host(6,'Sweden').
host(7,'Chile').
host(8,'England').
host(9,'Mexico').
host(10, 'West Germany').
host(11, 'Argentina').
host(12,'Spain').
host(13,'Mexico').
host(14,'Italy').
host(15,'USA').
host(16,'France').
host(17,'South Korea').
host(17,'Japan').
host(18,'Germany').
host(19,'South Africa').
host(20,'Brazil').
host(21,'Russia').
host(22,'Qatar').

final(1,'Uruguay','Argentina').
final(2,'Italy','Czechoslovakia').
final(3,'Italy','Hungary').
final(4,'Uruguay','Brazil').
final(5,'West Germany','Hungary').
final(6,'Brazil','Sweden').
final(7,'Brazil','Czechoslovakia').
final(8,'England','West Germany').
final(9,'Brazil','Italy').
final(10,'West Germany','Netherlands').
final(11,'Argentina','Netherlands').
final(12,'Italy','West Germany').
final(13,'Argentina','West Germany').
final(14,'West Germany','Argentina').
final(15,'Brazil','Italy').
final(16,'France','Brazil').
final(17,'Brazil','Germany').
final(18,'Italy','France').
final(19,'Spain','Netherlands').
final(20,'Germany','Argentina').
final(21,'France','Croatia').
final(22,'Argentina','France').

continent('Argentina','America').
continent('Brazil','America').
continent('Chile','America').
continent('Croatia','Europe').
continent('Czechoslovakia','Europe').
continent('England','Europe').
continent('France','Europe').
continent('Germany','Europe').
continent('Hungary','Europe').
continent('Italy','Europe').
continent('Japan','Asia').
continent('Mexico','America').
continent('Netherlands','Europe').
continent('Russia','Europe').
continent('South Africa','Africa').
continent('South Korea','Asia').
continent('Spain','Europe').
continent('Sweden','Europe').
continent('Switzerland','Europe').
continent('Uruguay','America').
continent('USA','America').
continent('West Germany','Europe').
continent('Qatar','Asia').



source(a).
source(b).
source(c).

destination(x).
destination(y).
destination(z).

link(a,d).
link(a,e).
link(b,d).
link(b,f).
link(c,f).
link(c,g).
link(c,q).
link(d,h).
link(d,i).
link(e,j).
link(f,k).
link(f,w).
link(g,l).
link(h,i).
link(i,p).
link(i,x).
link(j,x).
link(j,y).
link(j,z).
link(k,y).
link(l,m).
link(m,n).
link(n,o).
link(o,i).
link(p,y).
link(q,r).
link(r,s).
link(r,u).
link(s,t).
link(t,u).
link(u,x).
link(v,z).
link(w,v).
link(w,z).

