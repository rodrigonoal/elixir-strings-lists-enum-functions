defmodule Cellphone do
  def editNumber(number) do
    if String.length(number) == 10 do
      ddd = number |> String.slice(0, 2)
      prefix = number |> String.slice(2, 4)
      sufix = number |> String.slice(6, 4)

      "(#{ddd}) 9 #{prefix}-#{sufix}"
    else
      if String.length(number) == 8 do
        prefix = number |> String.slice(0, 4)
        sufix = number |> String.slice(4, 4)

        "9 #{prefix}-#{sufix}"
      end
    end
  end
end

number = "7199918888" #99918888

Cellphone.editNumber(number) |> IO.puts()
