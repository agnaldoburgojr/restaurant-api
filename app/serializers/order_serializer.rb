class OrderSerializer < ActiveModel::Serializer
  attributes :id, :products, :total, :payment
  has_one :user
end
