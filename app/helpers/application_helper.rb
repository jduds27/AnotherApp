module ApplicationHelper
  def login_helper style = ""
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      "<br>".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
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

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} '>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end
end
