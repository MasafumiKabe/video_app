CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIA2TJVWK4UAXYMUXPR',
    aws_secret_access_key: '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',
    region: 'ap-northeast-1'
  }

  config.fog_directory  = 'video-app-s3'
  config.cache_storage = :fog
end
