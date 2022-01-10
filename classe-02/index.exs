defmodule Format do
  def cpf(num) do
    if String.length(num) == 11 do
      IO.puts(
        String.slice(num, 0, 3) <>
          "." <>
          String.slice(num, 3, 3) <>
          "." <>
          String.slice(num, 6, 3) <>
          "-" <>
          String.slice(num, 9, 2)
      )
    else
      IO.puts("CPF Inválido")
    end
  end

  def cnpj(num) do
    if String.length(num) == 14 do
      IO.puts(
        String.slice(num, 0, 2) <>
          "." <>
          String.slice(num, 2, 3) <>
          "." <>
          String.slice(num, 5, 3) <>
          "/" <>
          String.slice(num, 8, 4) <>
          "-" <>
          String.slice(num, 12, 2)
      )
    else
      IO.puts("CNPJ Inválido")
    end
  end
end

# 11 numeros
cpfNum = "12345678900"
# 14 numeros
cnpjNum = "12345678000199"

Format.cpf(cpfNum)
Format.cnpj(cnpjNum)
