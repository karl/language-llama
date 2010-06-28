class AddDescriptionColumnToResource < ActiveRecord::Migration
  def self.up
    add_column :resources, :description,    :string
  end

  def self.down
    remove_column :resources, :description
  end
end
