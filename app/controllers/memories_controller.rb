class MemoriesController < ApplicationController
 before_action :authorized, only: [:create]

    def create
        memories = @user.memories.create(memory_params) 
        render json: memories
    end

    private 

    def memory_params
        params.permit(:title, :about, :address, :city, :state, :zipcode)
    end


end
