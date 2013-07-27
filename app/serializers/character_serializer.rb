class CharacterSerializer < ActiveModel::Serializer
  cached

  attributes :name

  def cache_key
    [object, object.updated_at]
  end
end
