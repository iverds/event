class CreateIsfitEvents < ActiveRecord::Migration
  def change
    create_table :isfit_events do |t|
      t.datetime :start_date
      t.string :title
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
