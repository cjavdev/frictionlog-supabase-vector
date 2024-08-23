class AddEmbeddingToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :embedding, :vector, limit: 1024
  end
end
