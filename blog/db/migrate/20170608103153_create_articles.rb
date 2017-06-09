class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      # t.string :title
      # t.text :text

      # t.timestamps
      t.string :commenter
      t.text :body
      t.references :article, foreign_key: true
 
      t.timestamps
    end
  end
end
