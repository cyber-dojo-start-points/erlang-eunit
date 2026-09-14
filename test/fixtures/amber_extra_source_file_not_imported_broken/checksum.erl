%% Nothing calls this module, but the Makefile compiles $(wildcard *.erl), so
%% erlc still reaches it and make stops on the error before eunit runs at all.
-module(checksum).
-export([twice/1]).

twice(N) ->
  N * 2
