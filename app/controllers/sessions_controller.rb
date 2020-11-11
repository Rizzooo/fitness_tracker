class SessionsController < ApplicationController
    def index
    end 
    
    def new
        user = Trainer.find_or_create_by(params[:id])

        if user
            session[:id] = user.id
            redirect_to trainer_path(user)
        else  
            "Error"
        end
    end

    # def create
    # end

    def destroy
    end
end
