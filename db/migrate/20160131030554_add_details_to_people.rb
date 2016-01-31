class AddDetailsToPeople < ActiveRecord::Migration
  def change
    add_column :people, :name, :string
    add_column :people, :weight, :integer
    add_column :people, :height, :integer
    add_column :people, :color, :string
  end
end
