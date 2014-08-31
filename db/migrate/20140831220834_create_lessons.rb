class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :project, index: true
      t.date :date
      t.text :achievement
      t.text :learned
      t.string :behavior
      t.string :result
      t.string :category
      t.references :user, index: true
      t.text :comment

      t.timestamps
    end
  end
end
