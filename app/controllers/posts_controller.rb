
class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    def detail
        @post = Post.find(params[:id])
    end
end