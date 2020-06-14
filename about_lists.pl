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

my_pack(L, [ST|X]) :- my_pack_impl(L, ST, X).
my_pack_impl([H,H|T], [H|ST], X) :- my_pack_impl([H|T], ST, X).
my_pack_impl([H,K|T], [H], [ST|X]) :- my_pack_impl([K|T], ST, X).
my_pack_impl([H], [H], []).
my_pack_impl([], [], []).

my_encode(L, X) :- my_pack(L, P), my_encode_impl(P, X).
my_encode_impl([H|T], [[HN, HF]|ET]) :- my_number_of(HN, H), my_first(HF, H), my_encode_impl(T,ET).
my_encode_impl([], []).

my_encode_modified(L, X) :- my_pack(L, P), my_encode_impl2(P, X).
my_encode_impl2([H|T], [HF|ET]) :- my_number_of(1, H), my_first(HF, H), my_encode_impl2(T,ET).
my_encode_impl2([H|T], [[HN, HF]|ET]) :- my_number_of(HN, H), my_first(HF, H), my_encode_impl2(T,ET).
my_encode_impl2([], []).

my_encode_reverse([[N,C]|T], X) :- my_encode_reverse_impl(N,C,X,T).
my_encode_reverse([C|T], X) :- my_encode_reverse_impl(1,C,X,T).
my_encode_reverse_impl(1,C,[C],[]).
my_encode_reverse_impl(1,C,[C|X],[[M,D]|T]) :- my_encode_reverse_impl(M,D,X,T).
my_encode_reverse_impl(1,C,[C|X],[D|T]) :- my_encode_reverse_impl(1,D,X,T).
my_encode_reverse_impl(N,C,[C|X],T) :- succ(M,N), my_encode_reverse_impl(M,C,X,T).

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
