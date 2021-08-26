namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    p "Cadastrando contatos..."
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(from: '1930-01-21', to: '2000-01-01')
      )
    end
    p "Cadastrado com sucesso"
  end

end
