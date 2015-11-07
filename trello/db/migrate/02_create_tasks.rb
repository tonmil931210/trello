class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title,       null: false
      t.string :description, null: false
      t.time :duration,      null: false
      t.date :start_date,    null: false
      t.date :finish_date,   null: false
      t.string :autor,       null: false
      t.boolean :finish,     default: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
