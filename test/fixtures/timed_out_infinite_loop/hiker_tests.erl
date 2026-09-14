%% hiker:answer/0 never returns. The loop is reached while eunit is still
%% building the list of tests to run, which is not covered by the per-test
%% timeout eunit would otherwise apply, so nothing stops it and the runner
%% is the one that gives up.
-module(hiker_tests).
-include_lib("eunit/include/eunit.hrl").
-import(hiker, [answer/0]).

life_the_universe_and_everything_test_() ->
  Answer = hiker:answer(),
  ?_assertEqual(42, Answer).
