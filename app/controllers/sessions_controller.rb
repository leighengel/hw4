class SessionsController < ApplicationController
  def new
  end


  def create
    @user = User.find_by({ "email" => params["email"] })
    puts @user.inspect
    if @user
      if BCrypt::Password.new(@user["password"]) == params["password"]

       # assign a cookie
      session["user_id"] = @user["id"]

        # login the user
        flash["notice"] = "You've logged in."
        redirect_to "/"
      else
        flash["notice"] = "Bad login."
        redirect_to "/sessions/new"
      end
    else
      flash["notice"] = "Unsuccessful login."
      redirect_to "/sessions/new"
    end
  end

  #this is new check with Anthony 

  def destroy
      flash["notice"] = "Goodbye."
      session["user_id"] = nil
      redirect_to "/login"
  end
end
  