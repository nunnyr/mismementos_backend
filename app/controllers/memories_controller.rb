class MemoriesController < ApplicationController
 before_action :authorized, only: [:create]

    def show
        memories=@user.memories.find(params[:id])
        render json: memories
    end
 
 
    def create
        memories = @user.memories.create(memory_params) 
        render json: memories
    end

    def destroy
        memories=Memory.find(params[:id])
        memories.destroy
        render json: memories
    end

    private 

    def memory_params
        params.permit(:title, :about, :address, :city, :state, :zipcode)
    end


end
