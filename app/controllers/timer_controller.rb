class TimerController < ApplicationController
  def index
  end

  def motivation
    ai_service = OllamaAiService.new
    @motivation = ai_service.generate()
    render plain: @motivation
  end
end
