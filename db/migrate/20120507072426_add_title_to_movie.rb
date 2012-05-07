class AddTitleToMovie < ActiveRecord::Migration
  def self.up
    add_column :movies, :title, :text
  end

  def self.down
    remove_column :movies, :title
  end
end
