defmodule CarGroup do
  def generate(group, start) do
    if length(group) < start + 1 do
      IO.puts("Error: Position does not exist")
    else
      group_fun = fn car, index ->
        if index >= start and index < start + 3 do
          car
        end
      end

      group
      |> Enum.with_index(group_fun)
      |> Enum.filter(fn element -> element != nil end)
      |> Enum.join(" - ")
      |> IO.puts()
    end
  end
end

cars = ['Ford Ka', 'Ranger', 'Hilux', 'Corola', 'Fusca', 'Chevete', 'Brasilia']
position = 3

CarGroup.generate(cars, position)
