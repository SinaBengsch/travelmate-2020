class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.string :address
      t.references :user, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
