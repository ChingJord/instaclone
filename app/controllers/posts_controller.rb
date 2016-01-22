class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def index
  end

  def show
  end

  def create
  	@post Post.new(permit_params)
  	if @post.save
  		flash[:success] = "Success!"
  		redirect_to show_post_path(@post)
  	else
  		flash[:error] = @post.errors.full_messages
  		redirect_to new_post_path
  	end
  end

  private

  	def permit_params
  		params.require(:post).permit(:image, :description)
  	end

end
