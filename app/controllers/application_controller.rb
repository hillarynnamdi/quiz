class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


    def after_sign_in_path_for(resource_or_scope)
     if resource_name == :user
         playgame_index_path
      end

     end

      def after_sign_up_path_for(resource_or_scope)
     if resource_name == :admin
  	   new_admin_session_path
       
    elsif
        resource_name == :user
        new_user_registration_path
      
     end
  end


  def after_sign_out_path_for(resource_or_scope)
     if resource_name == :admin
       new_admin_session_path
    elsif resource_name == :user
      new_user_session_path
     end
  end 
  
end
