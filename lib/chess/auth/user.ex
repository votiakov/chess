defmodule Chess.Auth.User do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset
  alias Comeonin.Argon2

  schema "users" do
    field :password, :string, virtual: true
    field :password_hash, :string
    field :username, :string

    timestamps()
  end

  def changeset(struct) do
    struct
    |> cast(%{}, [:username, :password])
    |> validate_required([:username, :password])
    |> hash_password()
  end

  @doc false
  def changeset(struct, params) do
    struct
    |> cast(params, [:username, :password])
    |> validate_required([:username, :password])
    |> hash_password()
  end

  defp hash_password(
    %Ecto.Changeset{valid?: true, changes: %{password: password}} = changeset
  ) do
    change(changeset, Argon2.add_hash(password))
  end

  defp hash_password(changeset), do: changeset
end