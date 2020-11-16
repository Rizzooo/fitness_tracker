class Devise::PasswordsController < ApplicationController
    before_action :authenticate_trainer! 

    def new
    end

    def edit
    end

    def update
    end
end