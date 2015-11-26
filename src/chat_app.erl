-module(chat_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).
-export([start/0]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start() ->
    application:start(chat).

start(_StartType, _StartArgs) ->
    chat_sup:start_link().

stop(_State) ->
    ok.
