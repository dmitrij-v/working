module ApplicationHelper
  def show_link(user)
    return link_to 'Profile', profile_path if user
    link_to 'Login', new_user_session_path
  end
end
