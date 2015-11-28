class AddEmailToPets < ActiveRecord::Migration
  def change
    add_column :pets, :email, :string
  end
end
