class SessionsController < ApplicationController

	def new
	end
	
	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate( params[:password])
			@current_user = user
			session[:user_id] = user.id
			redirect_to projects_path, :notice => "Logged in!"
		else
			flash[:error] = "Invalid email or password"
			redirect_to login_path
		end
	end
	
	def destroy
		session[:user_id] = nil
		redirect_to root_url, :notice => "Logged out!"
	end
end
