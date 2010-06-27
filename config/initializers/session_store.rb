# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_language-llama_session',
  :secret      => 'a0aa52781de276a185070fadb8d902594ee52533cbdffc3c64c52aa4522f65baac7d5bdf4113c48019d97360ee87f347e9035eb2bb9ad59da1ba6362fad62e62'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
