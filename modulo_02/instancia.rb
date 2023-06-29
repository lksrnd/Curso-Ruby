class Instancia
  def initialize(nome_fornecido = "Indigente")
    @nome = nome_fornecido  
  end
  
  def imprimir_nome
    @nome
  end
end

p = Instancia.new("Lucas")
p2 = Instancia.new
puts p.imprimir_nome
puts p2.imprimir_nome