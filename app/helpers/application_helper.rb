require 'digest/md5'

module ApplicationHelper

  def gravatar_url(email)
    'https://www.gravatar.com/avatar/' + Digest::MD5.hexdigest(email)
  end
end
