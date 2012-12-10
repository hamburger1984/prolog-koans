:- begin_tests(about_lists).
:- use_module(about_lists).

test(my_first) :-
	my_first(X, [a,b,c]),
	X is a.
test(my_first, [fail]) :- 
	my_first(b, [a,b,c]).

test(my_last,[nondet]) :-
	my_last(X, [a,b,c]),
	X is c.

test(my_penultimate) :-
	my_penultimate(X, [a,b,c,d]),
	X is c.
test(my_penultimate, [fail]) :-
	my_penultimate(d, [a,b,c,d]).

test(my_element_at) :-
	my_element_at(X, [a,b,c,d], 3),
	X is c.
test(my_element_at, [fail]) :-
	my_element_at(d, [a,b,c,d], 3).
test(my_element_at, [fail]) :-
	my_element_at(c, [a,b,c,d], 2).

test(my_number_of) :-
	my_number_of(X, [a,b,c]),
	X is 3.

test(my_reverse) :-
	reverse([a,b,c,d],[d,c,b,a]).

test(is_palindrome) :-
	is_palindrome([x,a,m,a,x]).
test(is_palindrome, [fail]) :-
	is_palindrome([a,b,c,d]).

test(my_flatten) :-
	my_flatten([a, [b, [c,d], e]], [a,b,c,d,e]).

test(my_compress) :-
	my_compress([a,a,a,a,b,b,b,b,c,c,c,c,a,a,d,e,e,e,e],[a,b,c,a,d,e]).

test(my_pack) :-
	my_pack([a,a,a,b,c,c,a,a,d,e,e,e,e],[[a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]).

test(my_encode) :-
	my_encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e],[[4,a],[1,b],[2,c],[2,a],[1,d],[4,e]]).

test(my_encode_modified) :-
	my_encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e],[[4,a],b,[2,c],[2,a],d,[4,e]]).

test(my_encode_reverse) :-
	my_encode_reverse([[4,a],b,[2,c],[2,a],d,[4,e]],[a,a,a,a,b,c,c,a,a,d,e,e,e,e]).

test(my_encode_direct) :-
	my_encode_direct([a,a,a,a,b,c,c,a,a,d,e,e,e,e],[[4,a],b,[2,c],[2,a],d,[4,e]]).

:- end_tests(about_lists).
