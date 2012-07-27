require 'devise_session_limit/hooks/session_limit'

module Devise
  module Models
    # Ensures that there is only one session usable per account at once.
    # If someone logs in, and some other is logging in with the same credentials,
    # the session from the first one is invalidated and not usable anymore.
    # The first one is redirected to the sign page with a message, telling that
    # someone used his credentials to sign in.
    module SessionLimit
      extend ActiveSupport::Concern

      def update_unique_session_id!(unique_session_id)
        self.unique_session_id = unique_session_id

        save(:validate => false)
      end

    end
  end
end