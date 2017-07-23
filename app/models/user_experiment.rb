class UserExperiment < ActiveRecord::Base
  belongs_to :users
  belongs_to :experiments
end
