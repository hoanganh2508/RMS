class CreateUserAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_answers do |t|
      t.integer :feedback_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
