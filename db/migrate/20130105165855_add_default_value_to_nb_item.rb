class AddDefaultValueToNbItem < ActiveRecord::Migration
  def change
    change_column :revisions, :nbItem, :default => 0

  end
end
