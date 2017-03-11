-module(first).
-export([product/1, maximum/1, product_direct/1, maximum_direct/1]).

% Tail Recursive definition of product
product(X) ->
    product(X, 1).

product([], P) ->
    P;
product([X|Xs], P) ->
    product(Xs, X*P).

% Tail Recursive definition of maximum
maximum(X) ->
    maximum(X, 0).

maximum([X], M) ->
    max(X, M);
maximum([X|Xs], M) ->
    maximum(Xs, max(X, M)).


% Direct definition of product
product_direct([]) ->
    1;
product_direct([X|Xs]) ->
    X * product_direct(Xs).

% Direct definition of maximum
maximum_direct([X]) ->
    X;
maximum_direct([X|Xs]) ->
    max(X, maximum_direct(Xs)).
