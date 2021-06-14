class TweetsController < ApplicationController

    def index
        render(json: { tweets: Tweet.all })
    end

    def show
        render(json: Tweet.find(params[:id]))
    end
end