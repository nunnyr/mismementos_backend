class NotesController < ApplicationController
    # before_action :authorized, only: [:create]

    def create
        note=Note.create(notes_params)
        render json: note
    end

    def destroy
      notes=Note.find(params[:id])
      notes.destroy
      render json: notes
    end

  
    private

    def notes_params
        params.permit(:reflection, :memory_id)
    end
end
