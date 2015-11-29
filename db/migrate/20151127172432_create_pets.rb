class CreatePets < ActiveRecord::Migration
  def change


    create_table :pets do |t|
      t.string :report
      t.text :description
      t.string :where_specifics
      t.string :author

      t.timestamps null: false
    end
  end
end
