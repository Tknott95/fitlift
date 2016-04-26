module ApplicationHelper

  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.username, class: "img-circle")
  end

  def admin?
    current_user.email == "tknott95@hotmail.com"
    # I made up the line above. Implement your own checks according to your setup
  end

end
