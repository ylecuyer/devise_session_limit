# DeviseSessionLimit

Devise plugin preventing a user from having multiple open sessions

Using code from [https://github.com/phatworx/devise_security_extension](devise_security_extension)

## Installation

Add this line to your application's Gemfile:

    gem 'devise_session_limit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install devise_session_limit

## Usage

In your `User` model:

    class User

      # Additional field
      field :unique_session_id, :type => String

      # Additional devise module
      devise ..., :session_limit

    end

Add some translation key for the error message:

    en:
      devise:
        failure:
          session_limited: "You are already signed in from another place"