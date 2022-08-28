class RemoveBodyFromQuestionHashtag < ActiveRecord::Migration[7.0]
  def change
    remove_column :question_hashtags, :body, :string
  end
end
