class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  helper_method :user_signed_in?
  helper_method :correct_user?

  private

	  def current_user
	    begin
	      @current_user ||= User.find(session[:user_id]) if session[:user_id]
	    rescue Mongoid::Errors::DocumentNotFound
	      nil
	    end
	  end

		def user_signed_in?
      return true if current_user
    end

    def correct_user?
      @user = User.find(params[:id])
      binding.pry
      unless current_user == @user
        redirect_to signin_url, :alert => "Access denied."
      end
    end

    def authenticate_user!
      if !current_user or !current_user.email.include? "@kaeuferportal.de" or current_user.email.include? "demo@kaeuferportal.de"
        redirect_to signin_url, :alert => 'You need to sign in for access to this page.'
      end
    end

end
