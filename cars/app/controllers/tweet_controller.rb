require "rubygems"
require "twitter"
class TweetController < ApplicationController
  def user_page
     @tweet = Tweet.new
  end

	def user_tweet
    		@tweet = Tweet.new(params[:tweet])
		
		if @tweet.save then
  
    		    # Certain methods require authentication. To get your Twitter OAuth credentials,
    		    # register an app at http://dev.twitter.com/apps
    		   Twitter.configure do |config|
      			config.consumer_key = 'F8BrK6oBVHTKfmDo3uGNYA'
      			config.consumer_secret =  'o4D32mZ6LqB2YUHYl3OHk16VXjmzCheITWrtKYMg'
      			config.oauth_token = '1016235860-kXYGYlA4bTMDkM5SqO0wSjMQs4lVw6TsMJaITD3'
      			config.oauth_token_secret = 'eHLnFsJcjYogSGiUzN8zj4reLlLy3tLuigLdAEPStw'
		end

		 # Initialize your Twitter client
    		 client = Twitter::Client.new
  
    		# Post a status update
    		client.update(@tweet.tweet_content)
	end

    	redirect action:  "user_page", :notice => 'Tweet successfully posted'

    end
end
