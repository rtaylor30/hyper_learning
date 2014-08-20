class CreateQuestionSets < ActiveRecord::Migration
  def change
    create_table :question_sets do |t|
      t.references :user, index: true
      t.datetime :quizzed_at

      t.timestamps
    end
  end
end
