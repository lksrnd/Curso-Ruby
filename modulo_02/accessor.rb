class Pessoa
  attr_accessor :nome
	def falar
		"Olá tudo bem?"
	end
end

p1 = Pessoa.new
p1.nome = "Lucas" #Setter
puts p1.nome #getter