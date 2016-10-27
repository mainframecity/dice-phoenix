defmodule Dice.APIController do
  use Dice.Web, :controller

  def index(conn, _params) do
    render(conn, "200.json")
  end
end
