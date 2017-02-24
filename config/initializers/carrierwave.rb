CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_provider = 'fog'
    config.fog_credentials = {
      provider:      'AWS',
      aws_access_key_id:    ENV["AKIAIW2LAVUTM6RDF6WQ"],

      aws_secret_access_key:  ENV["AWS_SECRET_ACCESS_KEY"],

      region:      ENV["ap-northeast-1"]

    }
    config.fog_directory  =  ENV["jdstore-johnson"]

  else
    config.storage  :file
  end
end
