require_relative 'pagamento'

include Pagamento

puts "Digite a bandeira do cartão:"
bandeira = gets.chomp

puts "Digite o numero do cartão:"
cartao = gets.chomp

puts "Digite o valor da compra:"
valor = gets.chomp

puts pagar(bandeira, cartao, valor)