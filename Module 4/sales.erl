% example of my guards work in Erlang as well as my format output, the excuse here is that I wanted to create a program
% that would tell me whether an item of a certain price is on sale, at retail price, or limited edition.

% sets the module to call later
-module(sales).    
-export([price/1,budget/1,run/0]).  % note here, I tried to use just the strait compite(export all) but VS code threw a fit. 
                                    % mayby I set up somthing wrong this is the first time I've ever worked with Erlang.


%creats a set of gaurded functions to call if the price is from 1 to 5 $, 5 to 20 $, and 20 $ and above.
price(Price) when Price >= 20 ->
    limited_edition;
price(Price) when Price >= 5, Price =< 20 ->
    retail;
price(Price) when Price >= 1, Price < 5 ->
    on_sale.

% This is also an example of gaurding implimentation, but also creating a format messege to print out with the function
% Here we have a quick budget check function, lets say we have a budget of 200$ for buying any object at the above prices.
% we pass the total here and check if that is or is not within budget.
budget(N) when N > 0, N =< 200 ->
    io:format("~p$ is within budget ~n", [N]);

budget(N) ->
    io:format("~p$ is NOT within budged ~n", [N]).

% run fucntion to pass these through to a needed output.
run() ->
    io:format("An item that is priced at ~p$ is concidered ~p~n", [7, price(7)]),
    io:format("An item that is priced at ~p$ is concidered ~p~n", [3, price(3)]),
    io:format("An item that is priced at ~p$ is concidered ~p~n", [31, price(31)]),
    budget(78),
    budget(346).