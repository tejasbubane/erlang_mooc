-module(second).
-export([hypotenuse/2, perimeter/2, area/2]).
-import(first, [square/1, area/3]).

hypotenuse(A,B) ->
    math:sqrt(first:square(A) + first:square(B)).

perimeter(A,B) ->
    C = hypotenuse(A,B),
    A+B+C.

area(A,B) ->
    C = hypotenuse(A,B),
    first:area(A,B,C).
