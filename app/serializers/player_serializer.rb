# frozen_string_literal: true

class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :position, :bat, :throw
  belongs_to :team
end
