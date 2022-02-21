class CategorySerializer
  include JSONAPI::Serializer
  attributes :name, :records
end
