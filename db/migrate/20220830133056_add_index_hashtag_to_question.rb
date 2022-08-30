class AddIndexHashtagToQuestion < ActiveRecord::Migration[7.0]
  def change
    add_index :hashtags, :body
  end
end
