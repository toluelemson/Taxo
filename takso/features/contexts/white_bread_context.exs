defmodule WhiteBreadContext do
  use WhiteBread.Context
  use Hound.Helpers

  feature_starting_state fn ->
    Application.ensure_all_started(:hound)
    %{}
  end

  scenario_starting_state fn _state->
    Hound.start_session
    %{}
  end

  scenario_finalize fn status, _state->
    nil
  end

  given_ ~r/^the following taxis are on duty$/, fn state ->
    {:ok, state}
  end

  and_ ~r/^I open STRS' web page$/, fn state ->
    navigate_to "/bookings/new"
    {:ok, state}
  end
end
