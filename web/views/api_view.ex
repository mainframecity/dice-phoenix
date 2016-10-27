defmodule Dice.APIView do
  use Dice.Web, :view

  def render("200.json", _assigns) do
    %{status: 200}
  end
end
