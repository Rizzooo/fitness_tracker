class Devise::SessionsController < ApplicationController
    def new
    end

    def create
        # @trainer = Trainer.find_by(:email => params[:email], :encrypted_password => params[:password])

        # if @trainer.valid?
        #     sign_in(@trainer)
        #     redirect_to "/trainers/#{@trainer.id}"
        # else  
        #     redirect_to '/auth/login'
        # end
    end

    def destroy
    end
end