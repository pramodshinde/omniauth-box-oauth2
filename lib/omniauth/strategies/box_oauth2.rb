require 'omniauth-oauth2'
module OmniAuth
  module Strategies
    class BoxOauth2 < OmniAuth::Strategies::OAuth2
      option :name, 'box_oauth2'

      option :client_options, {
        site: 'https://api.box.com/2.0/',
        authorize_url: 'https://app.box.com/api/oauth2/authorize',
        token_url: 'https://api.box.com/oauth2/token'
      }

      uid { raw_info['id'] }

      info do
        {
          name: raw_info['name'],
          email: raw_info['login'],
          job_title: raw_info['job_title'],
          image: raw_info['avatar_url'],
          phone: raw_info['phone'],
          address: raw_info['address'],
          status: raw_info['status']
        }
      end 

      extra do 
        { raw_info: raw_info }
      end

      private 

      def raw_info
        @raw_info ||= access_token.get('users/me').parsed || {}
      end     
    end
  end
end