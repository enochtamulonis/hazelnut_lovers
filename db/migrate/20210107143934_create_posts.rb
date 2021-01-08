class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :hazelnuts_count, default: 0
      t.integer :propagations_count, default: 0
      t.references :lover, null: false, foreign_key: true

      t.timestamps
    end
  end
end
