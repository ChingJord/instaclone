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
  end

  private

  	def permit_params
  		params.require(:post).permit(:image, :description)
  	end

end
