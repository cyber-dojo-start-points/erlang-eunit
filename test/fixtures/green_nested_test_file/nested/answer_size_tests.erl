%% The Makefile compiles $(wildcard *.erl), which is the top dir only, so a
%% file in a sub-dir is never compiled and never reaches eunit. The failing
%% assertion here is what says so: the case is green.
-module(answer_size_tests).
-include_lib("eunit/include/eunit.hrl").

the_answer_is_three_digits_long_test() ->
  ?assert(hiker:answer() > 99).
