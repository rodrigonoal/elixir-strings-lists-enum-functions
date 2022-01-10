defmodule DocNumber do
  def cleanup(string) do
    punctuation = [".", "-", "/", " "]
    String.replace(string, punctuation, "")
  end
end

cpf = "011.022.033-44"
cnpj = "12. 345. 678/0001-90"

DocNumber.cleanup(cpf)
|> IO.puts()
DocNumber.cleanup(cnpj)
|> IO.puts()
