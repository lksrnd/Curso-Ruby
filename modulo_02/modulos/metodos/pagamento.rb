module Pagamento
  def pagar(bandeira, cartao, valor)
    puts "Sua compra foi paga com o cartão: #{bandeira}, de número: #{cartao}, no valor de R$#{valor}"
  end
end