FactoryBot.define do
  factory :patient do
    name { "Test Patient" }
    email { "patient@example.com" }
    date_of_birth { "1990-01-01" }
    next_appointment { "2025-01-01" }
    association :user
  end
end
