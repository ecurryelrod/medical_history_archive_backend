# class RecordSerializer
#   include JSONAPI::Serializer
#   attributes :doc_name, :practice_name, :url, :date, :phone, :medications, :med_notes, :comments, :category
# end

class RecordSerializer < ActiveModel::Serializer
    attributes :id, :doc_name, :practice_name, :url, :date, :phone, :medications, :med_notes, :comments
    belongs_to :category#, except: [:created_at, :updated_at]
end