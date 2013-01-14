class CreateSearchEngines < ActiveRecord::Migration
  def change
    create_table :search_engines do |t|
      t.string :name
      t.string :url
      t.string :country
      t.integer :revision_id

      t.timestamps
    end
  end
end
