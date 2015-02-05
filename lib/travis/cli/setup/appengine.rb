require 'travis/cli/setup'

module Travis
  module CLI
    class Setup
      class AppEngine < Service
        description "automatic deployment to Google App Engine"

        def run
	  deploy 'appengine' do |config|
            config['oauth_token'] = ask("OAuth token").to_s
            encrypt(config, 'oauth_token')
          end
        end
      end
    end
  end
end
