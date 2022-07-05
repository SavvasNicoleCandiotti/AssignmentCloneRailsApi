class ProgramSerializer < ActiveModel::Serializer
  attributes :id, :name, :gradeLevel, :is_common_core, :assignments, :subject
end
