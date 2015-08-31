class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :comment_id
      t.integer :user_id
      t.string :context
      
      t.timestamps null: false
    end
  end
end
