# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    sequence(:model) { |n| "Model #{n}" }
    year [*1950..Time.now.year].sample
    kilometers [10000, 20000, 50000, 10000].sample
    color %w|black blue brown gray green orange pink purple red white yellow|.sample
  end
end
