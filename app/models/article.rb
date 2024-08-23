class Article < ApplicationRecord
  has_neighbors :embedding, normalize: true

  def self.search(query, limit: 5)
    vector = Embedding.new(query).generate!

    nearest_neighbors(
      :embedding,
      vector,
      distance: "euclidean",
    ).first(limit)
  end

  def generate_embedding!
    prompt = [question, answer].join(" ")

    vector = Embedding.new(prompt).generate!

    update!(embedding: vector)
  end
end
