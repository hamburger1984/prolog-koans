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

my_reverse(L,X) :- my_reverse_impl(L,X,[]).
my_reverse_impl([],X,X).
my_reverse_impl([H|T],X,Y) :- my_reverse_impl(T,X,[H|Y]).

is_palindrome([]).
is_palindrome(X) :- my_reverse(X,X).

my_flatten(L, X) :- my_flatten_impl(L, X, []).
my_flatten(X, [X]).
my_flatten_impl([H|T], X, Y) :- H = [_|_], my_flatten_impl(T, Z, Y), my_flatten_impl(H, X, Z).
my_flatten_impl([H|T], [H|Y], X) :- my_flatten_impl(T, Y, X).
my_flatten_impl([], X, X).

my_compress([],[]).
my_compress([H,H|T], X) :- my_compress([H|T],X).
my_compress([H,K|T], [H|X]) :- my_compress(T,X).
my_compress([H|T], [H|X]) :- my_compress(T,X).

% [a,a,b,b,c,c,c,c] -> [[a,a],[b,b],[c,c,c,c]]
my_pack(L, [ST|X]) :- my_pack_impl(L, ST, X).
% L input list being "deconstructed"
% ST sub list full of Hs
% X result
my_pack_impl([H,H|T], [H|ST], X) :- my_pack_impl([H|T], ST, X).
my_pack_impl([H,K|T], [H], [ST|X]) :- my_pack_impl([K|T], ST, X).
%my_pack_impl([H|T], [H|ST], X) :- my_pack_impl(T, ST, X).
my_pack_impl([H], [H], []).
my_pack_impl([], [], []).
%my_pack_impl([H|
%my_pack([
%my_pack([H|T], [[H]]) -> my_pack(
%my_pack([H|T],X) -> my_pack_impl(T,H,
%my_pack(_,_) :- false.
%my_pack_impl([H|T],H,

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
