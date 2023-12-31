module Authentication
  extend ActiveSupport::Concern

  included do
    private
      def current_user
        if session[:user_id].present?
          @current_user ||= User.find_by(id: session[:user_id]).decorate
        end
      end

      def user_sign_in?
        current_user.present?
      end 

      helper_method :current_user, :user_sign_in? #допуск к методам во в views
  end

end