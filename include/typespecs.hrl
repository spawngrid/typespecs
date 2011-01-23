%% gen_server
-type gen_server_unique_tag() :: any().

-type gen_server_from() :: {pid(), gen_server_unique_tag()}.

-type gen_server_stateless_stop(Reason) ->
		{stop, Reason}.

-type gen_server_ok_state() ->
		{ok, gen_server_state()} |
		{ok, gen_server_state(), timeout()} |
		{ok, gen_server_state(), hibernate}.

-type gen_server_init_result(Reason) ::
		gen_server_ok_state() |
		ignore |
		gen_server_stateless_stop(Reason).

-type gen_server_init_result() :: gen_server_init_result(any()).

-type gen_server_no_reply() ::
		{noreply, gen_server_state()} |
		{noreply, gen_server_state(), timeout()}.

-type gen_server_stop(Reason) ::
		{stop, Reason, gen_server_state()}.

-type gen_server_stop(Reply, Reason) ::
			{stop, Reason, Reply, gen_server_state()} |
			gen_server_stop(Reason).

-type gen_server_reply(Reply) ::
		{reply, Reply, gen_server_state()} |
		{reply, Reply, gen_server_state(), timeout()}.

-type gen_server_handle_call_result(Reply, Reason) ::
		gen_server_reply(Reply) |
		gen_server_no_reply() |
		gen_server_stop(Reply, Reason).

-type gen_server_handle_call_result(Reply) :: gen_server_handle_call_result(Reply, any()).

-type gen_server_handle_call_result() :: gen_server_handle_call_result(any(), any()).

-type gen_server_handle_cast_result(Reason) ::
		gen_server_no_reply() |
		gen_server_stop(Reason).

-type gen_server_handle_cast_result() :: gen_server_handle_cast_result(any()).

-type gen_server_handle_info_result(Reason) ::
		gen_server_no_reply() |
		gen_server_stop(Reason).

-type gen_server_handle_info_result() :: gen_server_handle_info_result(any()).

-type gen_server_terminate_result() :: any().

-type gen_server_code_change_result() :: {ok, gen_server_state()}.
