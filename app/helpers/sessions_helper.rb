module SessionsHelper
  def signed_in?
    return true if cookies[:current_user]
    false
  end
end
