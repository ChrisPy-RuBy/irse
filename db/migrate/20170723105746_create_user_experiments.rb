class CreateUserExperiments < ActiveRecord::Migration
  def change
    create_table :user_experiments do |t|

      t.timestamps null: false
    end
  end
end
