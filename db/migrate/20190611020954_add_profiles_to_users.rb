class AddProfilesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :website, :string
    add_column :users, :profile, :text
    add_column :users, :tel, :integer
    add_column :users, :sex, :integer
  end
end
