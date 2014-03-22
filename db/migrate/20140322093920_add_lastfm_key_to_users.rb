class AddLastfmKeyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lastfm_key, :string
  end
end
