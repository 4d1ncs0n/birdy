defmodule BirdyWeb.PageController do
  use BirdyWeb, :controller

  alias Birdy.Accounts

  def index(conn, _params) do
    render conn
  end

  def signup(conn, _params) do
    changeset = Accounts.register_changeset()
    render conn, user_changeset: changeset
  end

  def login(conn, _params) do
    render conn
  end

  def create_user(conn, %{"user" => user_params}) do
    case Accounts.create_user(user_params) do
      {:ok, _user} ->
        conn
        |> put_flash(:info, "Usuario creado satisfactoriamente!")
        |> redirect(to: "/")
      {:error, user_changeset} ->
        IO.inspect user_changeset

        conn
        |> put_flash(:error, "No se pudo crear la cuenta")
        |> render("signup.html", user_changeset: user_changeset)
    end
  end
end
