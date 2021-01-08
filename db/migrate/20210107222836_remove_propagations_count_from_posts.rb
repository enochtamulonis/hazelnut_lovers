class RemovePropagationsCountFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :propagations_count, :integer
  end
end
