-module(fifth).
-export([sum/1, maximum/1, fib/1, perfect/1]).

%% Tail Recursion

% 1. Sum of a list
sum(X) ->
    sum(X,0).

sum([], P) ->
    P;
sum(X,P) ->
    sum(tl(X), hd(X)+P).

% Maximum element from a list
maximum(X) ->
    maximum(X, 0).

maximum([], M) ->
    M;
maximum(X, M) when hd(X) > M ->
    maximum(tl(X), hd(X));
maximum(X, M) ->
    maximum(tl(X), M).

% nth fibonacci number using tail recursion
% (Store last two fibonacci numbers)
fib(0) ->
    0;
fib(N) when N > 0 ->
    fib(N, 1, 0).
fib(1, PN, _PPN) ->
    PN;
fib(N, PN, PPN) ->
    fib(N-1, PN+PPN, PN).

% perfect number - sum of all its divisors is equal to the number itself
perfect(N) ->
    perfect(N, 0, N-1).

perfect(N, ACC, DIV) when DIV == 1 ->
    N == (ACC + 1);
perfect(N, ACC, DIV) when N rem DIV == 0 ->
    perfect(N, ACC+DIV, DIV-1);
perfect(N, ACC, DIV) ->
    perfect(N, ACC, DIV-1).
