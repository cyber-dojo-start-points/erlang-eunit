%% eunit runs each test in its own process and catches what that process
%% throws, so a crashing test still leaves a summary behind. erlang:halt/1
%% is the one that does not: it stops the whole runtime where it stands, so
%% the second test never runs and no summary is ever printed.
-module(hiker_tests).
-include_lib("eunit/include/eunit.hrl").
-import(hiker, [answer/0]).

a_halting_test() ->
  erlang:halt(0).

b_life_the_universe_and_everything_test() ->
  ?assertEqual(42, hiker:answer()).
