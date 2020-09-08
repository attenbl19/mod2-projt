class ApplicationController < ActionController::Base
    helper_method :logged_in?


    
    def authorized
        redirect_to login_path unless logged_in?
      end

      def current_user
        @current_user ||= User.find_by(id: session[:user_id])
      end
      
      def logged_in?
        !current_user.nil?
      end

      def destroy
        session.delete(:user_id) # or session[:user_id] = nil
        @current_user = nil
      end
end
