class User < ActiveRecord::Base
  attr_protected :uid, :provider, :nickname, :email

  def update_with_omni_auth!(auth)
    self.provider = auth['provider']
    self.uid      = auth['uid']
    self.name     = auth['user_info']['name']
    self.email    = auth['user_info']['email']
    self.token    = auth['credentials']['token']
    save!
  end
end
