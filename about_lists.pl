:- module(about_lists, 
	[my_first/2, my_last/2, my_penultimate/2, my_element_at/3,
	my_number_of/2, my_reverse/2, is_palindrome/1, my_flatten/2]).

my_first(_,_) :- false.

my_last(X, [X]).
my_last(_,_) :- false.

my_penultimate(_,_) :- false.
my_penultimate(X, [_|T]) :- my_penultimate(X, T).

my_element_at(X,[X|_],1).
my_element_at(_,_,_) :- false.

my_number_of(0,[]).
my_number_of(_,_) :- false.

my_reverse(_,_) :- false.

is_palindrome(_) :- false.

my_flatten(_,_) :- false.