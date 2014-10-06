#This file is app/controllers/movies_controller.rb
class SessionsController < ApplicationController
def new
end

def create
paramHash=params[:user]

@user=User.find_by_user_id(paramHash[:user_id].strip)
#email=User.find_by_email(paramHash[:email].strip)
 if @user != nil
   if @user.user_id == paramHash[:user_id].strip and @user.email == paramHash[:email].strip
      session[:session_token]=@user.session_token 
      #flash[:notice]="You are logged in as #{@user.session_token}"
      redirect_to movies_path
   else
      flash[:notice]="Invalid user-id/email"
      redirect_to login_path
   end
 else
  flash[:notice]="Invalid user-id/email"
  redirect_to login_path
 end
 end

def destroy
session[:session_token]=nil
redirect_to movies_path
end

end
