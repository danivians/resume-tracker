class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :primary
      t.string :secondary

      t.timestamps
    end
  end
end
