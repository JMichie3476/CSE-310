% This is patturn matching code with the case of code block for the strech challange. Lets say you have a series
% of colored gems that you want to idetify, so you pass the colors through these matching functions.

-module (gems).
-export([gem_type/1,rare_blue/1,run/0]).

%quick matching function for quick string matches, with a case type if the input doesn't match what we want.
gem_type({gem, red}) -> "You have a Ruby";
gem_type({gem, blue}) -> "you have a Saphire";
gem_type({gem, yellow}) -> "you have a Topaz";
gem_type({gem, _}) -> "no gem match".


%case of block, lets say you have a number of blue gems, but they are different hues of ble, pass the secondary collor through here.
rare_blue(Arg) when is_tuple(Arg) ->
    case Arg of
        {gem, grey} -> "A grey-blue gem is a blue spinel";
        {gem, green} -> "A green-blue gem is a Tourmaline";
        {ceo, _} -> "No secondary color";
        _ -> "unknown pattern"
    end.

%run function to pass the format messeges
run() ->
    io:format("~p~n", [gem_type({gem, yellow})]),
    io:format("~p~n", [gem_type({gem, blue})]),
    io:format("~p~n", [gem_type({gem, red})]),
    io:format("~p~n", [gem_type({gem, wood})]),
    io:format("~p~n", [rare_blue({gem, grey})]),
    io:format("~p~n", [rare_blue({gem, green})]),
    io:format("~p~n", [rare_blue({gem, purple})]).