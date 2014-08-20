class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :topic, index: true
      t.string :text

      t.timestamps
    end
  end
end
