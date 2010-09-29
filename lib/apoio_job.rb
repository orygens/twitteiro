class ApoioJob < Struct.new(params[:tweet_id])
  def perform
    tweet = Tweet.find(params[:tweet_id])
    tweet.deliver
  end
end
