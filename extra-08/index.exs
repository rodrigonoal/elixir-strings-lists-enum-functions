defmodule Email do
  def verification(string) do
    verifyAt = string |> String.contains?("@")
    verifyDot = string |> String.contains?(".")
    verifyFirst = string |> String.first() != "."
    verifyLast = string |> String.last() != "."

    IO.puts(string)

    if verifyAt and verifyDot and verifyFirst and verifyLast do
      IO.puts("Valid email\n")
    else
      IO.puts("Invalid email\n")
    end
  end
end

Email.verification("jose@cubos.academy")
Email.verification("jose@cubos.academy.br")
Email.verification("jose.messias@cubos.academy")
Email.verification("jose.messias@cubos.io")
Email.verification("jose@cubos")
Email.verification("jose.messias@cubos")
Email.verification("jose.messias@.")
Email.verification("jose.@cubos")
Email.verification(".@")
Email.verification("@.")
Email.verification("jose.messias@cubos.")
Email.verification(".messias@cubos.")
Email.verification(".messias@cubos")
