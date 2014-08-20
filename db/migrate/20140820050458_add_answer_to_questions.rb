class AddAnswerToQuestions < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.string :answer
    end
  end
end
