class PropagationsController < ApplicationController
  before_action :set_post

  def create
    @propagation = @post.propagations.build(lover: current_lover)

    if @propagation.save
      redirect_to request.referrer
    end
  end

  def destroy
    propagation = @post.propagations.find(params[:id])
    post = propagation.post
    propagation.destroy
    redirect_to request.referer
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
