% Định nghĩa quy tắc tính tổng các số từ 1 đến N
sum(0, 0). % Trường hợp cơ bản: tổng của 0 số là 0
sum(N, SN) :-
    N > 0,
    N1 is N - 1,
    sum(N1, SN1),
    SN is SN1 + N.

% Chương trình chính
main :-
    write('Nhap N: '),
    read(N),
    sum(N, SN),
    format('Tong cac so tu 1 den ~d la ~d.~n', [N, SN]).
