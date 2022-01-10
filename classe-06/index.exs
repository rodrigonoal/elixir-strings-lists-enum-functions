fruits = ['Banana', 'Maca', 'Abacaxi', 'Pera', 'Uva']

reversed = Enum.reverse(fruits)

dropFruits = fruits |> Enum.drop(1) |> Enum.drop(-1)
addFruit = dropFruits ++ ['Melao']

IO.inspect(fruits)
IO.inspect(addFruit)
