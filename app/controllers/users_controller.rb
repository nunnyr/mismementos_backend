class UsersController < ApplicationController
    before_action :authorized, only: [:keep_logged_in]

    def index
        users= User.all 
        render json: users
    end

    def login 
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            token_user = encode_token({user_id: @user.id})

            render json: {
                user: UserSerializer.new(@user),
                token: token_user
            }

        else  
            render json: {error: "INCORRECT USERNAME OR PASSWORD"}, status: 422
        end 

    end 



    def create
        @user = User.create(user_params)
        if @user.valid?
            token_user = encode_token({user_id: @user.id})

            render json: {
                user: UserSerializer.new(@user),
                token: token_user
            }
        else
            render json: {error: "INVALID USER"}, status: 422
        end 
    end


    def keep_logged_in
        @user exists here because of the before action 
        token_user = encode_token({user_id: @user.id})
        
        render json: {
            user: UserSerializer.new(@user),
            token: token_user
        }
    end


    private

    def user_params
        params.permit(:username, :password, :avatar, :bio, :city, :state, :zipcode)
    end


end
