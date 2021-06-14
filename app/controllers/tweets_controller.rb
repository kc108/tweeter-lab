class TweetsController < ApplicationController

    def index
        render(json: { tweets: Tweet.all })
    end

    def show
        # render(json: Tweet.find(params[:id]))
        tweet = Tweet.find(params[:id])
        render(json: { tweet: tweet })
    end

    def create
        tweet = Tweet.new(tweet_params)

        if tweet.save
            render json: { tweet: tweet }
        else
            render(status: 422, json: { tweet: tweet, errors: tweet.errors })
        end
    end

    #Any methods below this
    private

    def tweet_params
        # Returns a sanitized hash of the params with nothing extra
        params.require(:tweet).permit(:title, :content, :author)
    end

end