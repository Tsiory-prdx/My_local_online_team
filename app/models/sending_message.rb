class SendingMessage < ApplicationRecord
    belongs_to :private_message
    belongs_to :user
    has_many :receiving_messages, through: :all_about_message
end
