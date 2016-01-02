[![Gem Version](https://badge.fury.io/rb/omniauth-box-oauth2.svg)](https://badge.fury.io/rb/omniauth-box-oauth2)
[![Build Status](https://travis-ci.org/pramodshinde/omniauth-box-oauth2.svg?branch=master)](https://travis-ci.org/pramodshinde/omniauth-box-oauth2)

# OmniAuth::Strategies::BoxOauth2

OAuth2 Strategy for [Box](https://www.box.com/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-box-oauth2'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-box-oauth2

## Usage

You can register your application [here](https://cloud.app.box.com/login) and get `client_id` & `client_secret`.

Here's an example for adding the middleware to a Rails app in config/initializers/omniauth.rb:
```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :box_oauth2, ENV["BOX_CLIENT_ID"], ENV["BOX_CLIENT_SECRET"]
end
```

Or If your are using devise add follwing in config/initializers/devise.rb
```ruby
config.omniauth :box_oauth2, ENV["BOX_CLIENT_ID"], ENV["BOX_CLIENT_SECRET"]
```

## Sample Auth Hash 
```ruby
{
  "provider"=>"box_oauth2",
  "uid"=>"123456",
  "info"=> {
    "name"=>"Pramod Shinde",
    "email"=>"box_user@email.com",
    "job_title"=>"Ruby On Rails Developer",
    "image"=>"https://app.box.com/api/avatar/large/123456",
    "phone"=>"1234567890",
    "address"=>"address",
    "status"=>"active"
  },
  "credentials"=> {
    "token"=>"box_access_token",
    "refresh_token"=>"box_refresh_token",
    "expires_at"=>1451681914,
    "expires"=>true
  },
  "extra"=> {
    "raw_info"=> {
      "type"=>"user",
      "id"=>"123456",
      "name"=>"Pramod Shinde",
      "login"=>"box_user@email.com",
      "created_at"=>"2014-10-28T00:04:41-07:00",
      "modified_at"=>"2016-01-01T10:11:16-08:00",
      "language"=>"en",
      "timezone"=>"America/Los_Angeles",
      "space_amount"=>10737418240,
      "space_used"=>301803,
      "max_upload_size"=>2147483648,
      "status"=>"active",
      "job_title"=>"Ruby On Rails Developer",
      "phone"=>"1234567890",
      "address"=>"address",
      "avatar_url"=>"https://app.box.com/api/avatar/large/123456"
    }
  }
}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/omniauth-box-oauth2. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).