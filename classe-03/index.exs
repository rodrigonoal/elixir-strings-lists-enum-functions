defmodule Transform do
  def stringToUrl(string) do
    IO.puts(
      String.trim(string)
      |> String.downcase()
      |> String.replace(" ", "-"))
  end
end

string = "Aprenda programar do zero na Cubos Academy"

Transform.stringToUrl(string)
