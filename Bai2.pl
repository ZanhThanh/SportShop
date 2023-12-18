% Định nghĩa các luật và sự kiện
is_herbivore(X) :- eats(X, grass).
is_carnivore(X) :- eats(X, meat).
is_predator(X) :- is_carnivore(X), is_fierce(X).
eats(X, Y) :- is_herbivore(X), eats_plant(X, Y).
eats(X, Y) :- is_carnivore(X), eats_animal(X, Y).
eats(X, Y) :- consumes(X, Y).

% Sự kiện và quy tắc cụ thể cho đề bài
eats_plant(deer, grass).
is_fierce(wolf).
eats_animal(wolf, X) :- is_herbivore(X).
consumes(X, Y) :- drinks(X, Y).
consumes(X, Y) :- eats(X, Y).

% Thêm các quy tắc cụ thể khác tùy thuộc vào cần thiết
drinks(X, water) :- is_carnivore(X).
drinks(X, water) :- is_herbivore(X).
