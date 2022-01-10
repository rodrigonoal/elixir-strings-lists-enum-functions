defmodule User do
  defstruct [:id, :name, :email, :tags]

  def new(id, name, email, tags) do
    %User{id: id, name: name, email: email, tags: tags}
  end

  def correctId(user) do
    newId = user.id |> String.pad_leading(6, "0")
    %User{user | id: newId}
  end

  def correctName(user) do
    newName =
      user.name
      |> String.split()
      |> Enum.map_join(" ", &String.capitalize(&1))

    %User{user | name: newName}
  end

  def correctEmail(user) do
    newEmail = user.email |> String.trim()
    %User{user | email: newEmail}
  end

  def correctTags(user) do
    newTags = user.tags |> Enum.join(", ")
    %User{user | tags: newTags}
  end

  def correctUser(user) do
    user
    |> correctEmail()
    |> correctId()
    |> correctName()
    |> correctTags()
  end
end

defmodule Main do
  def main do
    User.new(
      "123",
      "José silva costa",
      "      jose@email.com  ",
      ["financeiro", "administrativo", "geral"]
    )
    |> User.correctUser()
    |> IO.inspect()
  end
end

Main.main()
