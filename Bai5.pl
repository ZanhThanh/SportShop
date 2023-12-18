% Định nghĩa vị từ Tongchan
tongchan(0, 0) :- !.
tongchan(SN, N) :- N > 1, N1 is N - 2, tongchan(SN1, N1), SN is SN1 + N.

% Định nghĩa vị từ Tong
tong(SN, N) :- X is N, X mod 2 =\= 1, X > 1, X1 is X - 1, tongchan(SN, X1).
tong(SN, N) :- X is N, X mod 2 =:= 0, X >= 2, tongchan(SN, N).

% Hàm main để nhập giá trị N từ bàn phím và hiển thị kết quả
main :- write('Nhap N: '), read(N), tong(SN, N), write('Tong cac so chan tu 1 den '), write(N), write(' la: '), write(SN), nl.

% Gọi chương trình chính khi chạy
:- main.
