class Admin::PostsController < Admin::AdminController

  def index
        @posts = Post.all
  end

end