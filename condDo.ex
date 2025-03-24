x = IO.gets("Digite o primeiro número: ") |> String.trim() |> String.to_integer();
y = IO.gets("Digite o segundo número: ") |> String.trim() |> String.to_integer();
operacao = IO.gets("Digite a operação (+, -, * ou /): ") |> String.trim();

  resultado=

    cond do
      operacao == "/" && y == 0 -> :erro
      operacao == "+" -> x + y;
      operacao == "-" -> x - y;
      operacao == "*" -> x * y;
      operacao == "/" -> x / y;
      true -> :erro
    end

  cond do
    resultado == :erro -> IO.puts("Operação Inválida")
    true -> IO.puts("#{x} #{operacao} #{y} = #{resultado}")
  end
