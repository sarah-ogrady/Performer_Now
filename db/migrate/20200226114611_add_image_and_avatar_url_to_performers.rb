class AddImageAndAvatarUrlToPerformers < ActiveRecord::Migration[6.0]
  def change
    add_column :performers, :image_url, :string
    add_column :performers, :avatar_url, :string
  end
end
