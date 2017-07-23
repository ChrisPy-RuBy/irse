class User < ActiveRecord::Base
  has_many(:user_experiments)
  has_many(:experiments, {through: :user_experiments})
end
