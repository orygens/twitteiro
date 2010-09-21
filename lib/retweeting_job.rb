class RetweetingJob < Struct.new(params[:tweet_id])
  def perform
    tweet = Tweet.find(tweet_id)
    tweet.deliver
  end
end
