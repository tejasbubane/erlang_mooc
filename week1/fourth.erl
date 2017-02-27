-module(fourth).
-export([fib/1, pieces/1, pieces3d/1]).

fib(0) ->
    0;
fib(1) ->
    1;
fib(N) when N>0 ->
    fib(N-1) + fib(N-2).

% Evaluation of fib(4).
% fib(4) = fib(4-1) + fib(4-2) = fib(3) + fib(2)
% fib(3) = fib(3-1) + fib(3-2) = fib(2) + fib(1)
% fib(2) = fib(1) + fib(0) = 0 + 1 = 1.
% fib(3) = 1 + 1 = 2.
% fib(4) = 2 + 1 = 3.

% https://en.wikipedia.org/wiki/Lazy_caterer's_sequence
pieces(0) ->
    1;
pieces(N) when N>0 ->
    N + pieces(N-1).
