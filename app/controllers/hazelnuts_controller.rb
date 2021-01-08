class HazelnutsController < ApplicationController
  before_action :set_post
  def create
    @hazelnut = @post.hazelnuts.build(lover: current_lover)
    if @hazelnut.save
      redirect_to request.referer
    end
  end

  def destroy
    hazelnut = @post.hazelnuts.find(params[:id])
    post = hazelnut.post
    hazelnut.destroy
    redirect_to request.referer
  end

  private

  def set_post
    @post = Post.find_by_id(params[:post_id])
  end
end
