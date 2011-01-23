%% gen_server
-type gen_server_unique_tag() :: any().

-type gen_server_from() :: {pid(), gen_server_unique_tag()}.

-type gen_server_init_result() ::
		{ok, gen_server_state()} |
		{ok, gen_server_state(), timeout()} |
		{ok, gen_server_state(), hibernate} |
		ignore |
		{stop, any()}.

-type gen_server_handle_call_result() ::
		{reply, any(), gen_server_state()} |
		{reply, any(), gen_server_state(), timeout()} |
		{noreply, gen_server_state()} |
		{noreply, gen_server_state(), timeout()} |
		{stop, any(), any(), gen_server_state()} |
		{stop, any(), gen_server_state()}.

-type gen_server_handle_cast_result() ::
		{noreply, gen_server_state()} |
		{noreply, gen_server_state(), timeout()} |
		{stop, any(), gen_server_state()}.

-type gen_server_handle_info_result() ::
		{noreply, gen_server_state()} |
		{noreply, gen_server_state(), timeout()} |
		{stop, any(), gen_server_state()}.

-type gen_server_terminate_result() :: any().

-type gen_server_code_change_result() :: {ok, gen_server_state()}.
