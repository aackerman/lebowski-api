class ApplicationSerializer < ActiveModel::Serializer
  cached
  delegate :cache_key, :to => :object

  # Cache entire JSON string
  def to_json(*args)
    Rails.logger.info 'to_json cached'
    Rails.cache.fetch expand_cache_key(self.class.to_s.underscore, cache_key, 'to-json') do
      super
    end
  end

  # Cache individual Hash objects before serialization
  # This also makes them available to associated serializers
  def serializable_hash
    Rails.cache.fetch expand_cache_key(self.class.to_s.underscore, cache_key, 'serilizable-hash') do
      super
    end
  end

  private
  def expand_cache_key(*args)
    ActiveSupport::Cache.expand_cache_key args
  end
end
