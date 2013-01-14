class CreateRevisions < ActiveRecord::Migration
  def change
    create_table :revisions do |t|
      t.integer :nbItem
      t.boolean :published

      t.timestamps
    end
  end
end
