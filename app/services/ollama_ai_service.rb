require 'ollama-ai'

class OllamaAiService
  def initialize
    @client = Ollama.new(
      credentials: { address: 'http://localhost:11434' },
      options: { server_sent_events: true }
    )
  rescue StandardError => e
    Rails.logger.error "Failed to initialize Ollama client: #{e.message}"
    # Handle initialization error or re-raise if critical
    raise
  end

  def generate
    response = @client.generate(
      {
        model: 'llama3',
        prompt: 'Generate a motivational quote about time management.',
        stream: false
      }
    )
    parse_response(response)
  rescue StandardError => e
    Rails.logger.error "Failed to generate quote: #{e.message}"
    # Handle generation error appropriately, maybe return a fallback
    nil
  end

  private

  def parse_response(response)
    # Assuming response is an array and contains the desired data at index 0
    if response.is_a?(Array) && response.first.is_a?(Hash) && response.first.key?("response")
    response.first["response"]
    else
      Rails.logger.warn "Unexpected response format: #{response}"
      nil
    end
  end
end
