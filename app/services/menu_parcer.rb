class MenuParcer
  def initialize(text)
    @text = text
  end

  def parce
    @text['meals'].map { |meal| meal['id'] }
  end
end
