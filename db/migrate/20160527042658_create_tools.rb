class CreateTools < ActiveRecord::Migration[5.0]
  def change
    create_table :tools do |t|
      t.string :name
      t.string :status
      t.date :issuedate
      t.references :employee , index: true, foreign_key: true
      t.date :lostdate
      t.date :damagedate
      t.timestamps
    end
  end
end
