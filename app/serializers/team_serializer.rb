class TeamSerializer < ActiveModel::Serializer
  attributes :id, :team_name
  belongs_to :user
end
