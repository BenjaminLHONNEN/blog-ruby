class Admin::PostsController < Admin::AdminController

  def index
        @posts = Post.all
  end

  def new
        @post = Post.new
  end

  def create
        @post = Post.new(post_params)

        if @post.save
            redirect_to admin_posts_path
        else
          #raise @post.errors.messages.inspect
          render template: '/admin/posts/new'
        end
  end

  def edit
        @post = Post.find(params[:id])
  end

  def update
        @post = Post.find(params[:id])
        if @post.update_attributes(post_params)
            admin_post_path
        else
            render template: '/admin/posts/' + params[:id]
        end
  end

  def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to admin_posts_path
  end

  private

  def post_params
        params.require(:post).permit(
            :title,
            :content,
            :picture,
            :category_id
        ).merge(user_id: current_user.id)
  end

end