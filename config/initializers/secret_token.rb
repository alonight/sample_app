# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
 require 'securerandom'

 def secure_token
   token_file = Rails.root.join('.secret')
     if File.exist?(token_file)
          Use the existing token.
             File.read(token_file).chomp
               else
                    Generate a new token and store it in token_file.
                       token = SecureRandom.hex(64)
                           File.write(token_file, token)
                               token
                                 end
                                 end
SampleApp::Application.config.secret_key_base = '90fb0e3729a72ae7637d81c6c769f1f1df73aece45b50b49444222bdeb699bfcabd8f80cba59759ea4bc2e257583a9223ba0b961bc1ac8e8f319a07e756171e5'
