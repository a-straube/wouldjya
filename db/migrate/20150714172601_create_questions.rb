class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.column :option1, :string
      t.column :option1tally, :integer
      t.column :option2, :string
      t.column :option2tally, :integer
    end
  end
end
