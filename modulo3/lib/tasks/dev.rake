namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?

      show_spinner("Apagando BD..."){%x(rails db:drop)}
      show_spinner("Criando BD..."){%x(rails db:create)}      
      show_spinner("Migrando BD..."){%x(rails db:migrate)}
      %x(rails dev:add_mining_types)   
      %x(rails dev:add_coins)     
    else 
      puts "Você não está em modo de desenvolvimento"
    end
  end


  desc "Cadastra as Moedas"
  task add_coins: :environment do
  show_spinner("Cadastrando moedas...") do
    coins = [
               {
                 description: "Bitcoin",
                 acronym: "BTC",
                 url_image: "https://static.vecteezy.com/system/resources/thumbnails/008/505/801/small_2x/bitcoin-logo-color-illustration-png.png"
                 mining_type: MiningType.find_by(acronym: 'PoW')
               },

               {
                 description: "Ethereum",
                 acronym: "ETH",
                 url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgjzJx4F2jM1nXITy6BVCpJmb3pbwAl48csg&usqp=CAU"
                 mining_type: MiningType.all.sample
               },  
        
               {
                 description: "Dash",
                 acronym: "DASH",
                 url_image: "data:image/png;base64,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"
                 mining_type: MiningType.all.sample
               },
               { 
                 description:"Iota",
                 acronym: "IOT",
                 url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/1720.png"
                 mining_type: MiningType.all.sample
               },
               {
                 description: "ZCash",
                 acronym: "ZEC",
                 url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlCAAejzRe6HgwE4odSf8kz1aY5a7ng6XEqDx2Rn4uc6EruBN7MKK4HitzfqySlCXGDYc&usqp=CAU"
                 mining_type: MiningType.all.sample
               }
            ]

    coins.each do |coin|
      Coin.find_or_create_by!(coin)
    end
  end
end

  desc "Cadastra os tipos de mineração"
  task add_mining_types: :environment do
    show_spinner("Cadastrando tipos de mineração...") do
      mining_types = [
              {description: "Proof of Work", acronym: "PoW"},
              {description:"Proof of Stake", acronym: "PoS"},
              {description: "Proof of Capacity", acronym:"PoC"}
            ]
    mining_types.each do |mining_type|
      MiningType.find_or_create_by!(mining_type)
    end
  end
end

  private

  def show_spinner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")  
  end
end
