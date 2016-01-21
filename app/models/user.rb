class User < ActiveRecord::Base
  has_many :messages
  validates :name, presence: true, length: {minimum: 1}
end
