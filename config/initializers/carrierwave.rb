CarrierWave.configure do |config|
  # config.cache_dir = "#{Rails.root}/tmp/uploads"

  config.root = Rails.root.join('tmp')
  config.cache_dir = 'carrierwave'

  config.s3_access_key_id = ENV['s3_access_key_id'] || APP_CONFIG['s3_access_key_id']
  config.s3_secret_access_key = ENV['s3_secret_access_key'] || APP_CONFIG['s3_secret_access_key']
  config.s3_bucket = ENV['s3_bucket'] || APP_CONFIG['s3_bucket']

end
