class PostsController < ActionController::Base
  before_action :set_post, only: [:show, :update, :destroy]

  def index 
    @posts = Post.all
  end

  def new
    
  end

  def show
  end
  
  def edit
  
  end  
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end  
  end
  
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end

