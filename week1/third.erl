-module(third).
-export([xOr1/2, xOr2/2, xOr3/2, maxThree/3, howManyEqual/3]).

xOr1(X,Y) ->
    (X == true andalso Y == false) orelse (X == false andalso Y == true).

xOr2(X,Y) ->
    (X == true andalso Y =/= true) orelse (X == false andalso Y =/= false).

xOr3(X,Y) ->
    is_boolean(X) andalso is_boolean(Y) andalso X =/= Y.

maxThree(X,Y,Z) ->
    max(max(X,Y),Z).

howManyEqual(X,X,X) ->
    3;
howManyEqual(X,X,_) ->
    2;
howManyEqual(X,_,X) ->
    2;
howManyEqual(_,X,X) ->
    2;
howManyEqual(_,_,_) ->
    0.
