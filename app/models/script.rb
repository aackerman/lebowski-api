class Script
  attr_accessor :script

  def initialize(lines)
    @script = lines
  end

  private
  include SerializerCaching

  def cache_key
    ['script']
  end
end
