module ApplicationHelper
  def show_link(user)
    return link_to 'Log out', destroy_user_session_path, method: 'delete' if user
    link_to 'Login', new_user_session_path
  end
end
