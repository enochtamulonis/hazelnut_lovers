class RemoveHazelnutsCountFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :hazelnuts_count, :integer
  end
end
