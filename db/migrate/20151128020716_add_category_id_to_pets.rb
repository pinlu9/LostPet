class AddCategoryIdToPets < ActiveRecord::Migration
  def change
    add_column :pets, :category_id, :integer
  end
end
