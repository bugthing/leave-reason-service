defmodule LeaveReasonService.ReasonTest do
  use LeaveReasonService.ModelCase

  alias LeaveReasonService.Reason

  @valid_attrs %{external_id: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Reason.changeset(%Reason{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Reason.changeset(%Reason{}, @invalid_attrs)
    refute changeset.valid?
  end
end
