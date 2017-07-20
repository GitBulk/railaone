class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def change
    change_column(:articles, :body, :text)
  end

  def up
    change_column :articles, :body, :text
  end

  def down
    change_column :articles, :body, :string
  end
end
