books = [
  "Guerra e Paz",
  "A Montanha Mágica",
  "Cem Anos de Solidão",
  "Dom Quixote",
  "A Divina Comédia"
]

bookName = "Dom Quixote"

index = books |> Enum.find_index(&(&1 == bookName))

IO.puts(
  if(index) do
    "The book is on the position number #{index + 1}"
  else
    "No book found"
  end
)
