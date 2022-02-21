class RecordSerializer
  include JSONAPI::Serializer
  attributes :doc_name, :practice_name, :url, :date, :phone, :medications, :med_notes, :comments, :category
end
