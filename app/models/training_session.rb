class TrainingSession < ApplicationRecord
    belongs_to :trainer
    belongs_to :client

    def self.past
    end

    def self.today
    end

    def self.scheduled
    end
end
