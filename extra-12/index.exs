defmodule Nickname do
  def generate(name) do
    name
    |> String.downcase()
    |> String.replace(" ", "")
    |> String.slice(0..11)
    |> String.replace_prefix("", "@")

  end
end

"Guido Cerqueira"
|> Nickname.generate()
|> IO.puts()
