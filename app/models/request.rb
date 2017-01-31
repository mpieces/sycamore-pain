class Request
  include ActiveModel::Model
  attr_accessor :first_name, :last_name, :email, :phone, :comments
  validates :first_name, :last_name, :email, :phone, :comments, presence: true
end
