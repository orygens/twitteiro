module Twitter
  module AuthenticationHelpers
    def self.included(controller)
      controller.class_eval do
        helper_method :signed_in?
        hide_action :signed_in?
      end
    end

    def signed_in?
      !session[:screen_name].nil?
    end

    protected
      def authenticate
        deny_access unless signed_in?
      end

      def deny_access
        store_location
        render '/sessions/new', :status => :unauthorized
      end

      def sign_in(profile)
        session[:screen_name] = profile.screen_name if profile
        session[:profile_image_url] = profile.profile_image_url if profile
      end

      def redirect_back_or(default)
        session[:return_to] ||= params[:return_to]
        if session[:return_to]
          redirect_to(session[:return_to])
        else
          redirect_to(default)
        end
        session[:return_to] = nil
      end

      def store_location
        session[:return_to] = request.fullpath if request.get?
      end
  end
end
