class PrivateMessage < ApplicationRecord
    has_many :sending_message
    belongs_to :user
    has_many :comments
    has_many :receiving_message
    has_many :users, through: :all_about_message
end
