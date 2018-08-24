class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :references

      t.timestamps
    end
    add_index :shows, :references
  end
end
