class AddCaptionToRealEstate < ActiveRecord::Migration[6.1]
  def change
    add_column :real_estates, :caption, :text
    add_index :real_estates, :caption
  end
end
