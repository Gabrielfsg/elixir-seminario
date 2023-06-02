defmodule Main do

  def olaMundo do
    IO.puts "Ola, Mundo!"
  end

  def calculadora(num1, num2, op) do
    if op == "+" do
      num1 + num2
    else if op == "-" do
      num1 - num2
    else if op == "*" do
      num1 * num2
    else
      num1 / num2
    end
   end
  end
 end

 def parImpar(x) do
  case rem(x, 2) do
    0 -> IO.puts "Par"
    _ -> IO.puts "Impar"
  end
end

  def verificaValor(x) when x == 0 do
    IO.puts "O valor igual a 0"
  end

  def verificaValor(x) when x == 1 do
    IO.puts "O valor igual a 1"
  end

  def verificaValor(x) when x < 0 do
    IO.puts "O valor menor que 0"
  end

  def verificaValor(x) do
    IO.puts "Valor maior que 1"
  end

  def fatorial(x) when x >= 0 do
    if x == 0 do
      1
    else
      x * fatorial(x-1)
    end
  end

  def fibonachi(x) when x >= 0 do
    if x == 0 do
      0
    else if x == 1 do
      1
    else
      fibonachi(x-2) + fibonachi(x-1)
    end
   end
  end

  def somatorioNumero(x) when x  >= 0 do
    if x == 0 do
      0
    else
      x + somatorioNumero(x-1)
    end
  end

  def listaPares([]) do
    []
  end

  def listaPares([h | t]) do
    if rem(h, 2) == 0 do
      [h | listaPares(t)]
    else
      listaPares(t)
    end
  end

  def estaNaLista(x,[x | t]) do
    true
  end
  def estaNaLista(x,[x]) do
    true
  end
  def estaNaLista(x,[]) do
    false
  end
  def estaNaLista(x,[z | t]) do
    estaNaLista(x,t)
  end



  lista = [1, 2, 3, 4, 5]
  IO.inspect lista   # Saída: [1, 2, 3, 4, 5]

  lista = [1, 2, 3, 4, 5]
  elemento = List.first(lista)
  IO.puts elemento   # Saída: 1

  lista = [1, 2, 3]
  nova_lista = [0 | lista]
  IO.inspect nova_lista   # Saída: [0, 1, 2, 3]

  lista1 = [1, 2]
  lista2 = [3, 4]
  concatenada = lista1 ++ lista2
  IO.inspect concatenada   # Saída: [1, 2, 3, 4]

  lista = [1, 2, 3, 4, 5]
  nova_lista = List.delete(lista, 3)
  IO.inspect nova_lista   # Saída: [1, 2, 4, 5]

  lista = [1, 2, 3, 4, 5]
  existe = Enum.member?(lista, 3)
  IO.inspect existe   # Saída: true




end




Main.olaMundo()
IO.puts Main.calculadora(6,3,"/")
Main.parImpar(2)
Main.verificaValor(-3)
IO.puts Main.fatorial(4)
IO.puts Main.fibonachi(5)
IO.puts Main.somatorioNumero(5)
IO.inspect Main.listaPares([1,2,3,4,5])
IO.puts Main.estaNaLista(7,[1,2,3,4,5])
