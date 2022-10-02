class ChangeColumnNameCreatedByUserId < ActiveRecord::Migration[7.0]
  def change
    rename_column :questions, :created_by_user_id, :author_id
  end
end
