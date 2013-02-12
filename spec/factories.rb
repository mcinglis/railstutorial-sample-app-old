
FactoryGirl.define do
  factory :user do
    name                  "Gary Oak"
    email                 "gary.oak@example.com"
    password              "foobar"
    password_confirmation "foobar"
  end
end
