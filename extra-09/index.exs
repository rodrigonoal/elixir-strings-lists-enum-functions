defmodule Group do
  def make(people, size) do
    chunk_fun = fn chunk, index ->
      chunkString = Enum.join(chunk, ", ")
      IO.inspect("Group #{index + 1}: #{chunkString}.")
    end

    people
    |> Enum.chunk_every(size)
    |> Enum.with_index(chunk_fun)
  end
end

names = ['Juninho', 'Leo', 'Guido', 'Dina', 'Vitinho', 'Nanda']
groupSize = 4

Group.make(names, groupSize)
