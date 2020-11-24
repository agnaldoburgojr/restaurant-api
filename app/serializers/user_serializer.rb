class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password, :email, :is_admin
end
