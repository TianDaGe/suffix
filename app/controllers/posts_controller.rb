class PostsController < ApplicationController

  respond_to :html, :atom

  def index
    posts = Post.order("created_at desc").limit(20)
    @posts = posts.slice(0..3)
    @archive = posts.slice(4..20)
    # TODO The atom feed only has the last 4 posts, is this enough?
    respond_with @posts
  end

  def show
    @post = Post.find_by_permalink(params[:id])
    @comment = Comment.new
    @comments = @post.comments.order("created_at desc")
  end

end
