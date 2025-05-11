class AddCreatorToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :creator_id, :integer
  end
end
