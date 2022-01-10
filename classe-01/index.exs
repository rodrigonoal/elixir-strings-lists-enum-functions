input = "Essa pandemia é muito perigosa!"

defmodule Comments do
  def forbidden(comment) do
    forbiddenList = ["PANDEMIA", "COVID"]
    trimmed = String.trim(comment)
    upcased = String.upcase(trimmed)

    if String.contains?(upcased, forbiddenList) do
      IO.puts "Comentário bloqueado por conter palavras proibidas"
    else
      IO.puts "Comentário autorizado"
    end
  end
end

Comments.forbidden(input)
