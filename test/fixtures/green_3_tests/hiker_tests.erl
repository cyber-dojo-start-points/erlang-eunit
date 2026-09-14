-module(hiker_tests).
-include_lib("eunit/include/eunit.hrl").
-import(hiker, [answer/0]).

life_the_universe_and_everything_test() ->
  ?assertEqual(42, hiker:answer()).

the_answer_is_not_the_question_test() ->
  ?assertNotEqual(6 * 9, hiker:answer()).

the_answer_is_two_digits_long_test() ->
  ?assert(hiker:answer() > 9 andalso hiker:answer() < 100).
