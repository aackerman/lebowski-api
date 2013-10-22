module SerializerCaching
  # Cache entire JSON string
  def to_json(*args)
    Rails.cache.fetch expand_cache_key(self.class.to_s.underscore, cache_key, 'to-json') do
      super
    end
  end

  private

  def expand_cache_key(*args)
    ActiveSupport::Cache.expand_cache_key args
  end
end
