class ClientsController < ApplicationController
    def index
        @clients = Client.all.where(:trainer_id => session[:id])
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end
    
    def show
    end

    def destroy
    end
end
