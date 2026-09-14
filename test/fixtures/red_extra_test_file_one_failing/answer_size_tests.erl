-module(answer_size_tests).
-include_lib("eunit/include/eunit.hrl").

the_answer_is_three_digits_long_test() ->
  ?assert(hiker:answer() > 99).
