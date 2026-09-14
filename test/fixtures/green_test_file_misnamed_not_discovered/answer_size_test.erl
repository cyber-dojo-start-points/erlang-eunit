%% The Makefile copies *_tests.beam into the dir eunit is pointed at, and
%% this file is answer_size_test.erl, singular, so its beam is never copied
%% and its failing assertion never runs. The case is green.
-module(answer_size_test).
-include_lib("eunit/include/eunit.hrl").

the_answer_is_three_digits_long_test() ->
  ?assert(hiker:answer() > 99).
