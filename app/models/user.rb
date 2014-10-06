class User < ActiveRecord::Base
attr_accessible :user_id, :email, :session_token 


def User::create_user! (userHash={})
userHash[:session_token]=SecureRandom.base64

@user=User.create!(userHash)
return @user
end


end
