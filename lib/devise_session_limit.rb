require "devise_session_limit/version"

Devise.add_module :session_limit, :model => 'devise_session_limit/models/session_limit'