class User < ApplicationRecord
    belongs_to :city
    belongs_to :receiving_message
    has_many :gossips
    has_many :sending_messages
    has_many :likes , through: :giving_like
    has_many :private_messages, though: :all_about_message
end
