class DropTableAgainAgain < ActiveRecord::Migration
  def change
    drop_table :user_experiments
  end
end
