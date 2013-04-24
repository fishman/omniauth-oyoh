# OmniAuth OYOH - Own Your Own Health

## Basic Usage

### Rails

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :oyoh, ENV['SINGLY_ID'], ENV['SINGLY_SECRET']
    end

### Sinatra

    use OmniAuth::Builder do
      provider :oyoh, ENV['SINGLY_ID'], ENV['SINGLY_SECRET']
    end

### Devise

