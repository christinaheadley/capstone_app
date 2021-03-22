class AddGifUrlToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :gif_url, :string
  end
end
