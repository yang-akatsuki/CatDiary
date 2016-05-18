class Diary < ActiveRecord::Base
  belongs_to :user
  has_many :reviews

  def self.fetch_twitter
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = 'zNdGIigpVFcOfeNKnKqPVGC5R'
      config.consumer_secret = 'tS2MaZKCQ3IeseP03KdD2JwnEdM3Vz7c4eR61gJB2GX7J4N9eT'
      config.access_token = '1313070871-zb8s4F3CnD9FkMIBLS0TzY5zTqeHpFO09Ljscix'
      config.access_token_secret = 'x2JshC7ZbBY1DzZvWJwOzdthZKhfUqTlFRPFzMXUO46Yj'
    end

    limit = 10
    tag = "cat"
    tmp=[]
    client.search("##{tag}", lang: 'ja', result_type: 'recent', count: 1).take(limit).map do |tweet|
      if tweet.media[0].present?
        {
          icon: tweet.user.profile_image_url,
          name: tweet.user.name,
          text: tweet.text,
          rt: tweet.retweet_count,
          media: tweet.media[0].media_url.to_s
        }
      else
        {
        icon: tweet.user.profile_image_url,
        name: tweet.user.name,
        text: tweet.text,
        rt: tweet.retweet_count
        }
      end
      tmp << tweet
    end
    return tmp
  end
end
