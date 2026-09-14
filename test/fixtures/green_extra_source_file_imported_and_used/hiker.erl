-module(hiker).
-export([answer/0]).

answer() ->
  checksum:twice(21).
