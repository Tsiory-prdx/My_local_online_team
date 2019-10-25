class ReceivingMessage < ApplicationRecord
    belongs_to :user
    belongs_to :private_message
    has_many :sending_messages, through: :all_about_message
end
