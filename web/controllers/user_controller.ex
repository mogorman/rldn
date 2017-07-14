defmodule Rldn.UserController do
  use Rldn.Web, :controller

  alias Rldn.User

  def index(conn, _params) do
    users = User.all()
    render conn, "index.html", users: users
  end

  def new(conn, _params) do
    changeset = User.changeset(%User{})
    render conn, "new.html", changeset: changeset
  end
end
