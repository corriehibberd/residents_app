class RenamePagesContentColumn < ActiveRecord::Migration
  def change
    rename_column :pages, :content, :content1
  end
end
