class AllAboutMessage < ApplicationRecord
    belongs_to :sending_message
    belongs_to :receiving_message
end
