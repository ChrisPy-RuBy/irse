class CreateUserExperiments < ActiveRecord::Migration
  def change
    create_table :user_experiments do |t|
      t.references :users, index: true, foreign_key: true
      t.references :experiments, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
