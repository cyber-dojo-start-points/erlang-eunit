# The BEAM JIT keeps its generated code in a 64MiB memfd mapped twice, once
# writable and once executable. Growing that memfd is a file growing, so the
# container's file-size limit refuses it and erlc dies with SIGXFSZ before any
# test runs. +JMsingle true asks for one mapping that is both, which needs no
# memfd, and make passes it on to erlc and erl. It gives up write-execute
# separation inside the BEAM, and costs no run time.
ERL_FLAGS='+JMsingle true' make
