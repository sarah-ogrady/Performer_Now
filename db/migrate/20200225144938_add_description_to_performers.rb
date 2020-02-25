class AddDescriptionToPerformers < ActiveRecord::Migration[6.0]
  def change
    add_column :performers, :description, :text
  end
end
