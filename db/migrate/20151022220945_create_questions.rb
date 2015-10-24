class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :inquiry
      t.string :category
      t.integer :user_id
      t.datetime :created_at
      t.string :auth_token

      t.timestamps null: false
    end
  end
end
