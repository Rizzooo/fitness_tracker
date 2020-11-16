class Devise::RegistrationsController < ApplicationController
    def new
        @trainer = Trainer.new
    end

    def create
        @trainer = Trainer.new(params)

        if @trainer.save
            @trainer.sign_in
            redirect_to trainers_path(@trainer)
        else  
            redirect_to new_trainer_registration_path(@trainer)
        end
    end

    def edit
    end

    def update
    end
end