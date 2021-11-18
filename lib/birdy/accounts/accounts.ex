defmodule Birdy.Accounts do

  import Ecto.Changeset
  alias Birdy.Accounts.User
  alias Birdy.Repo

  def create_user(params) do
    %User{}
    |> cast(params, [:username, :email, :password])
    |> validate_required([:username, :email, :password])
    |> Repo.insert
  end

end
