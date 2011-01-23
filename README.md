typespecs
=========

It is a (currently) .hrl-based repository of commonly used typespec "idioms" that are not available from OTP.


Usage
-----

Just include typespecs.hrl in your code and you can start using its typespecs.

If you are using rebar, you can declare typespec as a dependency in rebar.config:

<code>
{deps, [{typespecs, "0.1", {git, "git://github.com/spawngrid/typespecs.git","HEAD"}}]}.
</code>


Example
-------

<code>
-type gen_server_state() :: #state{}
</code>

<code>
-spec handle_cast(any(), gen_server_state()) -> gen_server_handle_cast_result().
</code>
