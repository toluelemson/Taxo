defmodule Takso.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:user) do
      add :name, :string
      add :username, :string
      add :password, :string

      timestamps()
    end
  end
end
