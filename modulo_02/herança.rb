class Pessoa
  attr_accessor :nome , :email
end

class PessoaFisica < Pessoa
  attr_accessor :cpf
  def falar_nome(nome)
    puts "Meu nome é #{@nome}" 
  end
end

class PessoaJuridica < Pessoa
  attr_accessor :cnpj
  def pagar_fornecedor
  puts "Fornecedor Pago"
  end
  
end

p1 = Pessoa.new
p1.nome = "Lucas"
p1.email = "lucas@gmail.com"
puts p1.nome
puts p1.email

p2 = PessoaFisica.new
p2.nome = "Murilo"
p2.email = "murilo@gmai.com"
p2.cpf = "123456"
puts p2.nome
puts p2.email
puts p2.cpf

p3 = PessoaJuridica.new
p3.nome = "Jose"
p3.email = "Jose@gmail.com"
p3.cnpj = "789456123"
puts p3.nome
puts p3.email
puts p3.cnpj

puts p2.falar_nome(p2.nome)

