%% The only test crashes rather than failing an assertion. eunit counts a
%% crash as a failure like any other, so the summary still says Failed and
%% the case is red rather than amber.
-module(hiker_tests).
-include_lib("eunit/include/eunit.hrl").
-import(hiker, [answer/0]).

life_the_universe_and_everything_test() ->
  Zero = hiker:answer() - hiker:answer(),
  ?assertEqual(42, hiker:answer() div Zero).
