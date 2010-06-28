class AddLanguageIdColumnToResource < ActiveRecord::Migration
  def self.up
    add_column :resources, :language_id,    :integer
  end

  def self.down
    remove_column :resources, :language_id
  end
end
