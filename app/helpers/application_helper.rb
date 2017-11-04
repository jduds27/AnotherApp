module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path) +
      "<br>".html_safe +
      (link_to "Login", new_user_session_path)
    else
      link_to "Logout", destroy_user_session_path, method: :delete
    end
  end
end

def nav_items
  [
    {
      url: root_path,
      title: 'Home'
    },
    {
      url: about_path,
      title: 'About Me'
    },
    {
      url: contact_path,
      title: 'Contact'
    },
    {
      url: blogs_path,
      title: 'Blog'
    },
    {
      url: deals_path,
      title: 'Deals'
    },
    {
      url: news_path,
      title: 'News'
    },
  ]
end
