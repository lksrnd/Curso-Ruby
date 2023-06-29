class Pessoa
	def initialize(cont = 1)
		cont.times do |i|
		puts
		puts "Inicializando...#{i+1}"	
		puts
		end
	end

	def falar(nome = "Pessoa")
		"Olá #{nome}, tudo bem?"
	end

	def falar2(nome = "Pessoa")
		"Olá #{nome}, tudo bem?"
	end

	def falar3(texto = "Oi", texto2 = "Tudo bem?")
		"#{texto} - #{texto2}"
	end
end

p = Pessoa.new(5)
puts p.falar("Lucas")
puts p.falar2("Murilo")
puts p.falar3("Lucas", "Oi")

p2 = Pessoa.new