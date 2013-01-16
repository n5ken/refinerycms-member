FactoryGirl.define do
  factory :refinery_member, :class => "Refinery::Members::Member" do
    sequence(:email) { |n| "member#{n}@factory.com" }
    password "secret123"
  end
end
