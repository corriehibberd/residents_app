class AddContent2AndContent3ToPages < ActiveRecord::Migration
  def change
    add_column :pages, :content2, :text
    add_column :pages, :content3, :text
  end
end
