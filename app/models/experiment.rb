class Experiment < ActiveRecord::Base

  has_many (:user_experiments)
  has_many(:users, {through: :user_experiments})

end
