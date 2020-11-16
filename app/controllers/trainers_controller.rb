class TrainersController < ApplicationController
    attr_accessor :name, :email
    before_action :authenticate_trainer!

    def new
    end

    def show
        @trainer = Trainer.find_by(params[:email])
    end

    def destroy
    end

    private

    def trainer_params
        params.require(:trainer).permit(:email, :password)
    end
end
