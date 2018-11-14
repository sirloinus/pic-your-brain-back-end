class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :games
    has_many :games
    class GameSerializer < ActiveModel::Serializer
        attributes :id, :points, :time, :penalties, :level
    end
end 


