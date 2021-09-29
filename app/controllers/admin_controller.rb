class AdminController < ApplicationController
	  def login
		  	if request.post?
			  	if params[:name]=="admin" && params[:password]=="password"
			  		session[:admin] = "admin"
			  		flash[:notice]="welcome!!! to admin"
			  		redirect_to stores_path
			  		
			  	else
			  		flash[:notice] = "Invalid Name or Password"
			  		render :action=>:login

			  		
		  	end
	   end
	   def logout
	   	session[:admin] = nil
	   	flash[:notice]="You have logged out"
	   	redirect_to :action=>:login
    end
    
end
end