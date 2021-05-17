class CreateLawArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :law_articles do |t|
      t.string :article_name
      t.string :content

      t.timestamps
    end
    add_index :law_articles, :article_name
  end
end
