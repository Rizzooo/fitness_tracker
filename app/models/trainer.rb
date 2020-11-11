class Trainer < ApplicationRecord
    has_many :training_sessions
    has_many :clients, through: :training_sessions
end
