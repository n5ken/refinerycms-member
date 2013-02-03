FactoryGirl.define do
  factory :refinery_user, :class => "Refinery::User" do
    sequence(:username) { |n| "girl#{n}" }
    email { "#{username}@factory.com" }
    password "secret123"

    after_create do |u|
      u.roles << Refinery::Role.find_or_create_by_title("Refinery")
    end
  end

  factory :refinery_superuser, :parent => :refinery_user do
    after_create do |u|
      u.roles << Refinery::Role.find_or_create_by_title("Superuser")
    end
  end
end
