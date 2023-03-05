% this is for recursion testing, creating a few common recursion functions a nd running them is some baisc lists.

-module(recursion). 
-export([f/1,reverse/1,reverse/2,dup/2,len/1,len/2,run/0]).

% A quick factorial function
f(N) when N == 0 -> 1; 
f(N) when N > 0 -> N*f(N-1). 

% THis takes a given list and reverses the items.
reverse(L) -> reverse(L,[]).
reverse([],Acc) -> Acc; 
reverse([H|T],Acc) -> reverse(T, [H|Acc]).

% this makes a number of duplications based on the input, the first number is the number of duplications, 
% the second is the number being duplicated.
dup(0,_) -> 
   []; 
dup(N,T) when N > 0 ->
   [T|dup(N-1,T)]. 


% THis is a quick length count function, it couts out the number if objects in a list.
len(L) -> len(L,0). 
len([], Acc) -> Acc; 
len([_|T], Acc) -> len(T,Acc+1).

% quick run function.
run() -> 
   X = [f(1),f(2),f(3),f(4),f(5)], 
   Y = reverse(X),
   Z = dup(5,f(4)),
   _P = len(Z),
   io:fwrite("~w~n",[Z]),
   io:fwrite("~w~n",[X]),
   io:fwrite("~w~n",[Y]),
   io:fwrite("~w~n",[_P]).