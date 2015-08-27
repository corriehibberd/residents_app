class AddHeadingToPages < ActiveRecord::Migration
  def change
    add_column :pages, :heading, :string
  end
end
