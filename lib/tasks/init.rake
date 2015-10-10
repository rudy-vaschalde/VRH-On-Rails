namespace :init do
  desc "Initialize N2 and N4"
  task championships: :environment do
    if Championship.n2.nil?
      Championship.create!(name: "National 2")
      puts "National 2 created"
    end
    if Championship.n4.nil?
      Championship.create!(name: "National 4")
      puts "National 4 created"
    end  
  end

end
