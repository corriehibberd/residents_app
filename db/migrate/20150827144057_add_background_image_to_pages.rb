class AddBackgroundImageToPages < ActiveRecord::Migration
  def change
    add_column :pages, :background_image, :string
  end
end
