%% The name is answer_size_test.erl, singular, so eunit would never run this
%% file. erlc reaches it anyway, because the Makefile compiles every *.erl in
%% the top dir, and make stops on the error before eunit runs.
-module(answer_size_test).
-include_lib("eunit/include/eunit.hrl").

the_answer_is_two_digits_long_test() ->
  ?assert(hiker:answer() > 9 andalso
