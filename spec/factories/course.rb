FactoryBot.define do
  factory :course do
    name { Faker::Educator.course_name }
    time { rand(1..6).to_s + ":00 PM" }
  end
end
