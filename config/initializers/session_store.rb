# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gitbox_session',
  :secret      => '94dfbc44bb5f360ac436edcdd719e07b70a995a7df4136c0d485f73c9ddb34c3ae7c8ee048cd65ffd7781aa85ad1dae25594b69e876cc0bb72581d6d3b1d3233'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
