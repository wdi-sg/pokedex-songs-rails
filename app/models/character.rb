class Character < ApplicationRecord
    has_many :jobs
    validates :character, presence: true, length: { minimum: 5}
end
