defmodule BirdyWeb.PageController do
  use BirdyWeb, :controller

  alias Birdy.Accounts

  def index(conn, _params) do
    render conn
  end

  def signup(conn, _params) do
    changeset = Accounts.register_changeset()
    render conn, user_chainset: changeset
  end

  def login(conn, _params) do
    render conn
  end
end
