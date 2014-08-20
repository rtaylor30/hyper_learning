class CreateManyToManyQuestionQuestionSets < ActiveRecord::Migration
  def change
    create_table :question_sets_questions do |t|
      t.references :question
      t.references :question_set, index: true

      t.timestamps
    end
  end
end
