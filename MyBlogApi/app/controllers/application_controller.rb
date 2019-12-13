class ApplicationController < ActionController::API
    # Include Knock within your application.
    
        # module = Knock::Authenticable
        # include module
      

    include ::Knock::Authenticable
    
    protected
    
    # Method for checking if current_user is admin or not.
    def authorize_as_admin
      return_unauthorized unless !current_user.nil? && current_user.is_admin?
    end
  end