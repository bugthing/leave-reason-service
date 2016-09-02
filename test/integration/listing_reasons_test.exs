defmodule ListingReasonsIntegrationTest do
  use ExUnit.Case, async: true
  use Plug.Test
  alias LeaveReasonService.Router
  alias LeaveReasonService.Reason
  alias LeaveReasonService.Repo

  setup do
    # Explicitly get connection before each test
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  @opts Router.init([])
  test 'listing reasons' do
    %Reason{name: "Holiday", external_id: "REASON1"} |> Repo.insert!
    reasons = Repo.all(Reason)
              |> Poison.encode!

    conn = conn(:get, "/reasons")
    response = Router.call(conn, @opts)
    assert response.status == 200
    assert response.resp_body == reasons
  end
end
