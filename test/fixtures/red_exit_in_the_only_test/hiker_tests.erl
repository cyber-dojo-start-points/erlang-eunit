%% The test process exits rather than failing an assertion. eunit runs each
%% test in its own process and reports the exit reason where it would report
%% an assertion, so the summary still says Failed and the case is red.
-module(hiker_tests).
-include_lib("eunit/include/eunit.hrl").
-import(hiker, [answer/0]).

life_the_universe_and_everything_test() ->
  exit(no_answer_yet).
