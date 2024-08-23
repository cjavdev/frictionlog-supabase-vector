class Embedding
  def initialize(query)
    @query = query
  end

  def generate!
    prompt = @query

    result = RestClient.post(
      'http://localhost:11434/api/embeddings', {
        model: "mxbai-embed-large",
        prompt: prompt,
      }.to_json
    )

    JSON.parse(result)["embedding"]
  end
end
