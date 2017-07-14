defmodule Rldn.User do
  use Rldn.Web, :model
  alias Rldn.Repo

  schema "users" do
    field :name, :string
    field :username, :string
    field :email, :string
    field :password, :string, virtual: true
    field :password_hash, :string
    timestamps()
  end

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, ~w(name username), [])
    |> validate_length(:username, min: 1, max: 20)
  end

  def all() do
    Repo.all(Rldn.User)
  end
end