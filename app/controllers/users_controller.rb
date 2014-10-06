#This file is app/controllers/users_controller.rb
class UsersController < ApplicationController

 def new
 print "inside new"
 end

 def create
 paramHash=params[:user]
 userID=User.find_by_user_id(paramHash[:user_id].strip)
 if userID == nil
  @user = User.create_user! paramHash
  flash[:notice] = "Welcome #{@user.user_id}. Your account has been created"
  redirect_to login_path
 else
  flash[:notice] = "Sorry, this user-id is taken. Try again."
  redirect_to new_user_path
 end
 end

end
