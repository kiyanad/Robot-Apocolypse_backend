class RobotSerializer < ActiveModel::Serializer
  attributes :id, :name, :hear, :stairs, :doors, :talk, :arms, :speed
end
