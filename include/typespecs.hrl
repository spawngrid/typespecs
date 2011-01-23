%% gen_server
-type gen_server_unique_tag() :: any().

-type gen_server_from() :: {pid(), gen_server_unique_tag()}.

-type gen_server_handle_call_result(State) ::
						 {reply, any(), State} |
						 {reply, any(), State, timeout()} |
						 {noreply, State} |
						 {noreply, State, timeout()} |
						 {stop, any(), any(), State} |
						 {stop, any(), State}.
