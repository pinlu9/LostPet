class AddPetinfoToPets < ActiveRecord::Migration
  def change
    add_column :pets, :petname, :string
    add_column :pets, :breed, :string
    add_column :pets, :type, :string
    add_column :pets, :color, :string
    add_column :pets, :size, :string
    add_column :pets, :gender, :string
    add_column :pets, :age, :integer
    add_column :pets, :lastseen, :string
    add_column :pets, :owner, :string
    add_column :pets, :phone, :string
  end
end
