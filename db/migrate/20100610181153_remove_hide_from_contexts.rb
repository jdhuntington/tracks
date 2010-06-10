class RemoveHideFromContexts < ActiveRecord::Migration
  def self.up
    remove_column :contexts, :hide
  end

  def self.down
    add_column :contexts, :hide, :boolean
  end
end
