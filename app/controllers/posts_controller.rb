class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new

    @post.latitude = params[:post][:latitude].to_f
    @post.longitude = params[:post][:longitude].to_f
    @post.city_id = params[:post][:city_id].to_i
    @post.user_id = current_user.id
    @post.url =  params[:post][:url]

    @post.save

    render :json => @post

  end
end
