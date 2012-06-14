class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.date :intake_date
      t.date :followup_date
      t.text :comments
      t.belongs_to :user
      t.belongs_to :source
      t.belongs_to :status

      t.timestamps
    end
    add_index :candidates, :user_id
    add_index :candidates, :source_id
    add_index :candidates, :status_id
  end
end
