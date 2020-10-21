class ApplicationController < ActionController::API
    
    def encode_token(payload)
        JWT.encode(payload, 'op3n_s3sam3')
    end

    def auth_header
        request.headers['Authorization']
    end


    def decoded_token 
        if auth_header
            token = auth_header

            begin
                JWT.decode(token, 'op3n_s3sam3', true, algorithm:'HS256')
            rescue JWT::DecodeError
                nil   
            end 
        end
    end 

    def logged_in_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

    def logged_in? 
        !!logged_in_user
    end

    def authorized 
        render json: { error: 'Please log in'}, status: :unathorized unless logged_in?
    end 

end
