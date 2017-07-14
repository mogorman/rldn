defmodule Rldn.RldnController do
  use Rldn.Web, :controller

  def world(conn, %{"name" => name}) do
    render conn, "world.html", name: name
  end

  def world(conn, _params) do
    world(conn, %{"name" => "rob"})
  end

end
