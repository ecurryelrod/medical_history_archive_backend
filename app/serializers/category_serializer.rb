# class CategorySerializer
#   include JSONAPI::Serializer
#   attributes :name, :records
# end

class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :records
end