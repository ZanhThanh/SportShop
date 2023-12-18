% Định nghĩa quy tắc tính tổng các số lẻ từ 1 đến N
tong_le(1, 1) :- !.
tong_le(SN, N) :- N > 2, N1 is N - 2, tong_le(SN1, N1), SN is SN1 + N.

% Định nghĩa quy tắc tính tổng các số lẻ từ 1 đến N với N nhập từ bàn phím
tong(SN, N) :-
    N mod 2 =:= 0,
    N >= 2,
    N1 is N - 1,
    tong_le(SN, N1).

tong(SN, N) :-
    N mod 2 =\= 0,
    N > 2,
    tong_le(SN, N).

% Chương trình chính
main :-
    write('Nhap N: '),
    read(N),
    tong(SN, N),
    format('Tong cac so le tu 1 den ~d la ~d.~n', [N, SN]).
