-module(fizz_buzz_tests).
-include_lib("eunit/include/eunit.hrl").

fifteen_says_fizzbuzz_test() ->
  ?assertEqual("FizzBuzz", fizz_buzz:say(15)).
