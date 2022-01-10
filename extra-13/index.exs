defmodule MyFile do
  def validation(name) do
    formats = ["jpg", "jpeg", "gif", "png"]

    if String.ends_with?(name, formats) do
      "Valid file"
    else
      "Invalid file"
    end
  end
end

"Family jpeg.pdf"
|> MyFile.validation()
|> IO.puts()
