%% A second test file runs because its name ends _tests.erl, which is what
%% the Makefile copies into the dir eunit is pointed at. Cases reaching 2 is
%% what says that happened.
-module(answer_size_tests).
-include_lib("eunit/include/eunit.hrl").

the_answer_is_two_digits_long_test() ->
  ?assert(hiker:answer() > 9 andalso hiker:answer() < 100).
