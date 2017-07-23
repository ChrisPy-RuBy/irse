class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :field

      t.timestamps null: false
    end
  end
end
