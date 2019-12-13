class UserTokenController < Knock::AuthTokenController
    # skip_before_action :verify_authenticity_token

    skip_before_action :verify_authenticity_token, raise: false


    module Api
        module V1
            class UserTokenController < Knock::AuthTokenController
            end
        end
    end

    def find
        @user = User.find_by(email: params[user][:email])
        if @user
            render json: @user
        else
            @errors = @user.errors.full_messages
            render json: @errors
        end
    end

    def set_user
        @user = User.find_by(id: params[:id])
    end
end
