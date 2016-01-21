class Message < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
  validates :text, presence: true,
                   length: { minimum: 1, maximum: 140 }
end
