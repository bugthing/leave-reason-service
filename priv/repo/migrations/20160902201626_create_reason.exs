defmodule LeaveReasonService.Repo.Migrations.CreateReason do
  use Ecto.Migration

  def change do
    create table(:reasons) do
      add :name, :string
      add :external_id, :string

      timestamps()
    end

  end
end
