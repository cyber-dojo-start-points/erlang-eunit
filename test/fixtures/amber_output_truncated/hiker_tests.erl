%% The test passes, but it prints far more than the runner keeps. The runner
%% keeps the head of each stream and drops the rest, and eunit's summary line
%% comes last, so the line the rag-lambda reads is the one that is dropped.
%%
%% The noise goes to the `user` process rather than to the group leader eunit
%% swaps in around a test, which is what puts it on the real stdout beside
%% the summary rather than into eunit's per-test capture buffer.
-module(hiker_tests).
-include_lib("eunit/include/eunit.hrl").
-import(hiker, [answer/0]).

life_the_universe_and_everything_test() ->
  [ io:format(user, "noise on line ~p of a very chatty test~n", [N])
    || N <- lists:seq(1, 20000) ],
  ?assertEqual(42, hiker:answer()).
