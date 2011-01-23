%% gen_server
-type gen_server_unique_tag() :: any().

-type gen_server_from() :: {pid(), gen_server_unique_tag()}.

-type gen_server_init_result(Reason) ::
		{ok, gen_server_state()} |
		{ok, gen_server_state(), timeout()} |
		{ok, gen_server_state(), hibernate} |
		ignore |
		{stop, Reason}.

-type gen_server_init_result() :: gen_server_init_result(any()).

-type gen_server_handle_call_result(Reply, Reason) ::
		{reply, Reply, gen_server_state()} |
		{reply, Reply, gen_server_state(), timeout()} |
		{noreply, gen_server_state()} |
		{noreply, gen_server_state(), timeout()} |
		{stop, Reason, Reply, gen_server_state()} |
		{stop, Reason, gen_server_state()}.

-type gen_server_handle_call_result(Reply) :: gen_server_handle_call_result(Reply, any()).

-type gen_server_handle_call_result() :: gen_server_handle_call_result(any(), any()).

-type gen_server_handle_cast_result(Reason) ::
		{noreply, gen_server_state()} |
		{noreply, gen_server_state(), timeout()} |
		{stop, Reason, gen_server_state()}.

-type gen_server_handle_cast_result() :: gen_server_handle_cast_result(any()).

-type gen_server_handle_info_result(Reason) ::
		{noreply, gen_server_state()} |
		{noreply, gen_server_state(), timeout()} |
		{stop, Reason, gen_server_state()}.

-type gen_server_handle_info_result() :: gen_server_handle_info_result(any()).

-type gen_server_terminate_result() :: any().

-type gen_server_code_change_result() :: {ok, gen_server_state()}.
