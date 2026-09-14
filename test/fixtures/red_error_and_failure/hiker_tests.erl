%% One test fails an assertion and one crashes. eunit counts both the same
%% way, so the summary says Failed: 2 and the case is red rather than amber.
-module(hiker_tests).
-include_lib("eunit/include/eunit.hrl").
-import(hiker, [answer/0]).

life_the_universe_and_everything_test() ->
  ?assertEqual(42, hiker:answer()).

the_answer_divides_by_its_own_remainder_test() ->
  Zero = hiker:answer() - hiker:answer(),
  ?assertEqual(6, hiker:answer() div Zero).
