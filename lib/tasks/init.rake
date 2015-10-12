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

  desc "Initialize Voreppe team N2 and N4"
  task teams: :environment do
    if Team.n2.nil?
      Team.create!(name: "Primates N2", city: "Voreppe", championship: Championship.n2)
      puts "Voreppe N2 created"
    end
    if Team.n4.nil?
      Team.create!(name: "Primates N4", city: "Voreppe", championship: Championship.n4)
      puts "Voreppe N4 created"
    end
  end

end
