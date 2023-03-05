% this is a code block for the lists:filter with lamda functions as well as using lists themselves, although not directly
% making one in code. The idea behind this function is that your given a list of elements and isotops, and you need to sort
% them by specific criteria.


-module(protons).
-export([density/1,density/2,isotop/1,isotop/2]).


% this is a lambda function the runs through a given list and creates a new list based on the creteria we need,
% so whn we pass it through the filter, it will print out the sorted list. for this one where checking the number of
% protons, or the elments atomic number and only print out those listed greater than 40.
density(L) -> lists:reverse(density(L,[])).
density([], Acc) -> Acc;
density([Atom = {fe, Particle}|Elem], Acc) when Particle > 40 ->
    density(Elem, [Atom|Acc]);
density([_|Elem], Acc) ->
    density(Elem, Acc).

%I listed the commands for the erl shell just to save me to trouble
% Elem = [{fe,26},{cu,29},{ir,77},{nb,41}]
% lists:filter(fun({Elm,Particle}) -> Particle > 40 end, Elem).


% This is a copy of the lambda function but for the instance of sorting a list by specific isotopes of iron.
isotop(L) -> lists:isotop(density(L,[])).
isotop([], Acc) -> Acc;
isotop([Atom = {fe, Particle}|Elem], Acc) when Particle > 40 ->
    isotop(Elem, [Atom|Acc]);
isotop([_|Elem], Acc) ->
    density(Elem, Acc).

% Elem = [{fe,24},{fe,29},{co,26},{ni,26}]
% lists:filter(fun({Elm,Particle}) -> Elm == fe end, Elem).