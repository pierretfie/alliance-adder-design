-- Generated by maina_2024

--             date     :Fri May 31 19:21:10 2024
--              revision : v109

--             sequence :adder.pat

-- input / output list:

in  a B;;;
in  b B;;;
in   cin  B;;;
out  sum  B;;;
out  cout B;;;

begin

-- pattern description :

--             A(0) B(0) Cin  sum Cout

<   0ps>       : 0    0    0   ?0   ?0 ;
<  10ps>       : 0    0    1   ?1   ?0 ;
<  20ps>       : 0    1    0   ?1   ?0 ;
<  30ps>       : 0    1    1   ?0   ?1 ;
<  40ps>       : 1    0    0   ?1   ?0 ;
<  50ps>       : 1    0    1   ?0   ?1 ;
<  60ps>       : 1    1    0   ?0   ?1 ;
<  70ps>       : 1    1    1   ?1   ?1 ;
<  80ps>       : 0    0    0   ?0   ?0 ;
<  90ps>       : 0    0    1   ?1   ?0 ;
<  100ps>       : 0    1    0   ?1   ?0 ;
<  110ps>       : 0    1    1   ?0   ?1 ;
<  120ps>       : 1    0    0   ?1   ?0 ;
<  130ps>       : 1    0    1   ?0   ?1 ;
<  140ps>       : 1    1    0   ?0   ?1 ;
<  150ps>       : 1    1    1   ?1   ?1 ;


end;