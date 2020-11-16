class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def index
    end

    protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :speciality) }
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :speciality) }
    end
end
