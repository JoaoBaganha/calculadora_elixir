defmodule Calculadora do
  def iniciar do
    x = ler_inteiro("Digite o primeiro número: ")
    y = ler_inteiro("Digite o segundo número: ")
    operacao = ler_operacao("Digite a operação (+, -, * ou /): ")

    calcular(x, y, operacao)
    |> exibir_resultado(x, y, operacao)
  end

  defp ler_inteiro(mensagem) do
    IO.gets(mensagem)
    |> String.trim()
    |> String.to_integer()
  end

  defp ler_operacao(mensagem) do
    IO.gets(mensagem)
    |> String.trim()
  end

  defp calcular(_, 0, "/"), do: :erro
  defp calcular(x, y, "+"), do: x + y
  defp calcular(x, y, "-"), do: x - y
  defp calcular(x, y, "*"), do: x * y
  defp calcular(x, y, "/"), do: x / y
  defp calcular(_, _, _), do: :erro

  defp exibir_resultado(:erro, _x, _y, _op) do
    IO.puts("Operação inválida")
  end

  defp exibir_resultado(resultado, x, y, op) do
    IO.puts("#{x} #{op} #{y} = #{resultado}")
  end
end

Calculadora.iniciar()
