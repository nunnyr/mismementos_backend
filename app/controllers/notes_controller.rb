class NotesController < ApplicationController
    # before_action :authorized, only: [:create]

    def create
        note=Note.create(notes_params)
        render json: note
    end

    private

    def notes_params
        params.permit(:reflection, :memory_id)
    end
end
