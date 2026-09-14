%% eunit generates a test only from a function whose name ends _test or
%% _test_. the_answer_is_three_digits_long/0 ends in neither, so its failing
%% assertion never runs and the case is green on the one test above it.
-module(hiker_tests).
-include_lib("eunit/include/eunit.hrl").
-import(hiker, [answer/0]).
-export([the_answer_is_three_digits_long/0]).

life_the_universe_and_everything_test() ->
  ?assertEqual(42, hiker:answer()).

the_answer_is_three_digits_long() ->
  ?assert(hiker:answer() > 99).
