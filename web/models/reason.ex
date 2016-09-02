defmodule LeaveReasonService.Reason do
  use LeaveReasonService.Web, :model

  schema "reasons" do
    field :name, :string
    field :external_id, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :external_id])
    |> validate_required([:name, :external_id])
  end

  defimpl Poison.Encoder, for: LeaveReasonService.Reason do
    def encode(reason, _options) do
      reason
      |> Map.from_struct
      |> Map.drop([:__meta__, :__struct__])
      |> Poison.encode!
    end
  end
end
