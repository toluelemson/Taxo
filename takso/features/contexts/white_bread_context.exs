defmodule WhiteBreadContext do
  use WhiteBread.Context
  use Hound.Helper

  feature starting_state fn ->
    Application.ensure_all_started(:hound)
    ${}
  end

  scenario_starting_state fn ->
    Hound.start_session
    %{}
  end

  scenario_finalize_state fn ->
    Hound.end_session
    %{}
  end


  given_ ~r/^the following taxis are on duty$/, fn state ->
    {:ok, state}
  end
end
