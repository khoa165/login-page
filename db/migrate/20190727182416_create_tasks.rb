class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string      :task_name
      t.string      :status
      t.date        :deadline
      t.references  :user, foreign_key: true
      t.timestamps null: false
    end
  end
end
