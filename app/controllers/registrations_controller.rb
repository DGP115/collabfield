# frozen_string_literal: true

#  Rather than generating the Devise controller to then modify it, this file
#  inherits from the Devise RegistrationsController and modifies what we need.
#  The change we are making:  permitting name, a colum to teh user model we added
class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:name,
                                 :email,
                                 :password,
                                 :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name,
                                 :email,
                                 :password,
                                 :password_confirmation,
                                 :current_password)
  end
end
