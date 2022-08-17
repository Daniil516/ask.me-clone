class AddCreatedByToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :created_by_user_id, :integer
  end
end
