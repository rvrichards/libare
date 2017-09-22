CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV['S3_KEY'],
      aws_secret_access_key: ENV['S3_SECRET'],
      region:                ENV['S3_REGION'],
  }
  config.fog_directory  = ENV['S3_BUCKET']

  # For testing, upload files to local `tmp` folder.
  # These are also set in file: uploaders/image_uploader.rb
  if Rails.env.test? || Rails.env.development?
    config.storage           = :file
    # config.enable_processing = false
    # config.root              = "#{Rails.root}/tmp"
  else
    config.storage = :fog
  end

  config.cache_dir        = "#{Rails.root}/tmp/uploads" # To let CarrierWave work on Heroku
end
