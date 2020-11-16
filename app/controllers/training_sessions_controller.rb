class TrainingSessionsController < ApplicationController
    def index
        @trainingsessions = TrainingSession.all
    end

    def new
        @trainingsession = current_trainer.training_sessions.build
    end

    def create
        @trainingsession = current_trainer.training_sessions.build(training_session_params)

        if @trainingsession.save
            redirect_to trainingsession_path(@trainingsession)
        else  
            "Raise Error"
        end
    end

    def edit
        @trainingsession = TrainingSession.find_by(training_session_params)
    end

    def update
        trainingsession = TrainingSession.find_by(training_session_params)

        if trainingsession.save
            redirect_to trainingsession_path(@trainingsession)
        else  
            "Error"
        end
    end
    
    def show
        @trainingsession = TrainingSession.find_by(training_session_params)
    end

    def destroy
    end

    private

    def training_session_params
        params.require(:training_session).permit(:trainer_id, :client_id, :start_time, :end_time, :notes)
    end
end
