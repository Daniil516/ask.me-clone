class ChangeIndexBodyInUserToUnique < ActiveRecord::Migration[7.0]
  def change
    remove_index :hashtags, :body
    add_index :hashtags, :body, unique: true
  end
end
