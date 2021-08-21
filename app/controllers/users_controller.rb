class UsersController < ApplicationController

    def index
        @users = User.all
    end
    
    def show
        current_user.events.all
    end
    
    def new
        @user=User.new
    end
    
end
