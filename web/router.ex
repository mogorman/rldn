defmodule Rldn.Router do
  use Rldn.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Rldn.Auth, repo: Rldn.Repo
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Rldn do
    pipe_through :browser # Use the default browser stack
    get "/hello", RldnController, :world
    get "/hello/:name", RldnController, :world
    get "/", PageController, :index
    resources "/users", UserController, only: [:index, :show, :new, :create]
    resources "/sessions", SessionController, only: [:new, :create, :delete]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Rldn do
  #   pipe_through :api
  # end
end
