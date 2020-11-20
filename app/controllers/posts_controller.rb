class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  # def new
  #   @post = Post.new
  # end

  # def create
  #   @post = Post.new(post_params)
  #   if @post.save
  #     # flash[:notice] = "Article seve!"
  #     redirect_to posts_path
  #   else
  #     render :new
  #   end
  # end

  # def edit
  #   @post = Post.find_by_id(params[:id])
  # end

  # def update
  #   @post = Post.find_by_id(params[:id])
  #   if @post.update(post_params)
  #     redirect_to posts_path
  #   else
  #     render :edit
  #   end
  #   # render :article
  # end

  # def destroy
  #   @post = Post.find_by_url(params[:url])
  #   @comment = @post.comments(params[:article_url])
  #   @comment.destroy
  #
  #   redirect_to article_path
  # end

  # def destroy_all
  #   @posts = Post.all
  #   @posts.destroy_all
  #   redirect_to article_path
  # end


  # private
  # def post_params
  #   params.require(:post).permit(:name, :desc, :content, :image, :url, :active, :seo_key, :seo_title, :seo_desc, :alt)
  # end

end
