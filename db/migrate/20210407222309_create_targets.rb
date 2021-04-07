class CreateTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :targets do |t|
      t.string  :name,   null: false
      t.numeric :amount, null: false
      t.date    :due_at, null: false

      t.timestamps
    end
  end
end
