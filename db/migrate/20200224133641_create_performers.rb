class CreatePerformers < ActiveRecord::Migration[6.0]
  def change
    create_table :performers do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_title
      t.string :location
      t.integer :hourly_rate

      t.timestamps
    end
  end
end
