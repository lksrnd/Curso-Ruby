class Pessoa
	def falar
		"Olá tudo bem?"
	end
    
  def meu_id
        "Meu id é o #{self.object_id}"
	end
end

p = Pessoa.new
puts p.meu_id