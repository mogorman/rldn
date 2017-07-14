defmodule Rldn.UserView do
  use Rldn.Web, :view

  alias Rldn.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end

end
