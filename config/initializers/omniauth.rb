require 'yaml'

def twitter_auth_keys_from_env
  return ENV['twitter_key'], ENV['twitter_secret']
end

def twitter_auth_keys
  local_yaml_path = File.expand_path('../../twitter.yml', __FILE__)
  #puts local_yaml_path
  if File.exists?(local_yaml_path)
    Rails.logger.info "Reading twitter auth keys from twitter.yml"
    yaml = YAML.load_file(local_yaml_path)
    return yaml["twitter_key"], yaml["twitter_secret"]
  else
    Rails.logger.info "Reading twitter auth keys from ENV"
    return twitter_auth_keys_from_env
  end
end

Rails.application.config.middleware.use OmniAuth::Builder do

  key, secret = twitter_auth_keys
  if key.blank? || secret.blank?
    raise "Twitter keys not provided.  Need to set them in config/twitter.yml or the ENV hash"
  end
  provider :twitter, key, secret 
end
