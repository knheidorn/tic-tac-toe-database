class UserSerializer < ActiveModel::Serializer
  has_many :games
  attributes :id, :name, :password_digest
end
