class Client < ApplicationRecord
    has_many :training_sessions
    has_many :trainers, through: :training_sessions

    def self.notes
    end

    def self.training_sessions_year
    end

    def self.training_sessions_month
    end

    def self.training_sessions_week
    end
end
