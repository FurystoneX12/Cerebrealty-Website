class AddSynopsisToRealEstate < ActiveRecord::Migration[6.1]
  def change
    add_column :real_estates, :synopsis, :string
  end
end
