ADMINISTRATORS = ['subdigital', 'pseale', 'Jared314']

begin
  ADMINISTRATORS.each do |admin_nickname|
    if User.where(:nickname => admin_nickname, :provider => 'twitter').count == 0
      Rails.logger.info "Creating admin account for #{admin_nickname}"
      user = User.new
      user.nickname = admin_nickname
      user.provider = 'twitter'
      user.save!
    end
  end
rescue
  Rails.logger.info "ERROR CREATING ADMIN ACCOUNTS"
end
