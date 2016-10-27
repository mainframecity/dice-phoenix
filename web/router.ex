defmodule Dice.Router do
  use Dice.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Dice do
    pipe_through :api

    get "/", APIController, :index
  end
end
