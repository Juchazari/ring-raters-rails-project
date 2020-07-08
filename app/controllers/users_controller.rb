class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        if current_user == @user
            render 'show'
        else
            redirect_to root_path
        end
    end
    
    def new
        if current_user
            redirect_to root_path
        else
            @user = User.new
        end
    end

    def create
        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            redirect_to root_url
        else
            render 'new'
        end
    end

    private

        def user_params
            params.require(:user).permit(:first_name, :last_name, :email, :password, :confirm_password)
        end

end
