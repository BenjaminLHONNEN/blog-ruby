
class PostsController < ApplicationController
    def index
        if params[:query]
            @posts = Search.new(params[:query]).perform
        else
            @posts = Post.all
        end
    end
    def detail
        @post = Post.find(params[:id])
    end
end