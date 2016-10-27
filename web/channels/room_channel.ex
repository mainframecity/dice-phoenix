defmodule Dice.RoomChannel do
  use Phoenix.Channel

  def join("room:lobby", _message, socket) do
    {:ok, assign(socket, :username, "Unnamed")}
  end

  def handle_in("set:username", %{"username" => username}, socket) do
    {:noreply, assign(socket, :username, username)}
  end

  def handle_in("new:roll", %{"diceRoll" => diceRoll, "diceType" => diceType}, socket) do
    username = socket.assigns.username || "Unnamed"
    broadcast! socket, "new:roll", %{"username" => username, "diceRoll" => diceRoll, "diceType" => diceType}
    {:noreply, socket}
  end
end
