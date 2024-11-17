-module(hotload).
-export([server/1, upgrade/1]).

server(State) ->
    receive
      update ->
        NewState = ?MODULE:upgrade(State),
        ?MODULE:server(NewState);
      SomeMessage ->
        %% Do something here
        server(State)    %% Stay in the same version no matter what. 
    end.

upgrade(OldState) ->
    %% transform and return state here
    OldState.
    
