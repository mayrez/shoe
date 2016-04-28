# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :region => 'us-west-2',
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],     # 'your_access_key' required
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'], # 'your_secret_access_key' required
  }
  config.fog_directory  = 'kkk6565'                       # UNIQUE bucket name (required)
  config.fog_public     = true                                    # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
