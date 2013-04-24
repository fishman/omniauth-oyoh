require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class Oyoh < OmniAuth::Strategies::OAuth2
      option :name, :oyoh

      option :client_options, {
        :site => "https://cajuncodefest.dhh.la.gov",
        :authorize_path => "/oauth/authenticate",
        :token_path => "/oauth/access_token"
      }

      uid do
        raw_info["patient"]["patient_id"]
      end

      info do
        {
          :first_name => raw_info["patient"]["first_name"],
          :last_name => raw_info["patient"]["last_name"],
          :gender => raw_info["patient"]["gender"],
          :date_of_birth => raw_info["patient"]["date_of_birth"]
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end

    end
  end
end
