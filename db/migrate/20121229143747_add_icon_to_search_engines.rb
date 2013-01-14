class AddIconToSearchEngines < ActiveRecord::Migration
  def change
    add_column :search_engines, :icon, :string  end
end
