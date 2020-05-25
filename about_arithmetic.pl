:- module(about_arithmetic, 
	[is_prime/1, prime_factors/2, prime_factors_multiplicity/2,
	range_prime/3, goldbach_conjecture/2]).

is_prime(N) :-
    is_prime(N/2),
    is_prime(N/3),
    is_prime(N/5),
    is_prime(N/7).

is_prime(0) :- true.
is_prime(1) :- true.
is_prime(2) :- true.
is_prime(3) :- true.
is_prime(5) :- true.
is_prime(7) :- true.

prime_factors(_,_) :- false.

prime_factors_multiplicity(_,_) :- false.

range_prime(_,_,_) :- false.

goldbach_conjecture(_,_) :- false.
