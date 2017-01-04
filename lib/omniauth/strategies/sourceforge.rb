require 'omniauth-oauth'

module OmniAuth
  module Strategies
    class Sourceforge < OmniAuth::Strategies::OAuth

      option :client_options, {
          site:               'https://sourceforge.net',
          request_token_path: '/rest/oauth/request_token',
          authorize_path:     '/rest/oauth/authorize',
          access_token_path:  '/rest/oauth/access_token'
      }

      uid { raw_info['id'].to_s }

      info do
        {
            name:     raw_info['name'],
            username: raw_info['username'],
            email:    raw_info['email'],
            image:    raw_info['avatar_url']
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/rest/u').parsed
      end
    end
  end
end


OmniAuth.config.add_camelization 'sourceforge', 'Sourceforge'
