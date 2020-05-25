:- module(about_lists, 
	[my_first/2, my_last/2, my_penultimate/2, my_element_at/3,
	my_number_of/2, my_reverse/2, is_palindrome/1, my_flatten/2,
	my_compress/2, my_pack/2, my_encode/2, my_encode_modified/2,
	my_encode_reverse/2, my_encode_direct/2, my_duplicate/2,
	my_duplicate_for_n/3, my_drop/3, my_split/4, my_slice/4,
	my_rotate/3, remove_at/4, insert_at/4, range/3]).

my_first(X,[X]).
my_first(X,[X|_]).

my_last(X,[X]).
my_last(X,[_|T]) :- my_last(X, T).

my_penultimate(X,[X,_]).
my_penultimate(X,[_|T]) :- my_penultimate(X, T).

my_element_at(X,[X|_],1).
%my_element_at(X,[_|T],N) :- M is N-1, my_element_at(X,T,M).
my_element_at(X,[_|T],N) :- succ(M,N), my_element_at(X,T,M).

my_number_of(0,[]).
%my_number_of(N,[_|L]) :- my_number_of(M,L), N is M+1.
my_number_of(N,[_|L]) :- my_number_of(M,L), succ(M,N).

my_reverse([],[]).
my_reverse(X, [H|T]) :- my_reverse(Y, T), append(Y,[H],X).

is_palindrome([]).
is_palindrome(X) :- my_reverse(X,X).

my_flatten([], []).
my_flatten([H|T], X) :- is_list(H), my_flatten(H,HF), my_flatten(T,TF), append(HF,TF,X).
my_flatten([H|T], [H|X]) :- my_flatten(T, X).
my_flatten(X,[X]).

my_compress([],[]).
my_compress([],[]).

my_pack(_,_) :- false.

my_encode(_,_) :- false.

my_encode_modified(_,_) :- false.

my_encode_reverse(_,_) :- false.

my_encode_direct(_,_) :- false.

my_duplicate(_,_) :- false.

my_duplicate_for_n(_,_,_) :- false.

my_drop(_,_,_) :- false.

my_slice(_,_,_,_) :- false.

my_split(_,_,_,_) :- false.

my_rotate(_,_,_) :- false.

remove_at(_,_,_,_) :- false.

insert_at(_,_,_,_) :- false.

range(_,_,_) :- false.
