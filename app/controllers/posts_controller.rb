class PostsController < ApplicationController
  layout 'application'
  before_filter :set_post, only: [:show, :index]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.where(:published => true).order(:created_at).reverse
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find_by_slug(params[:id])
    end
end
