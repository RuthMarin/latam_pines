class LikesController < ApplicationController
  before_action :set_pine, only: [:show, :edit, :update, :destroy]
   helper_method :like


  def index
    @likes = Like.where(:user_id => current_user.id).all
    @pines = Pine.all
 end

 def create
    @user = current_user.id
    @pines = params[:type]
    @estado = 'true'
    likes = {user_id: @user, pin_id: @pines, estado: @estado }
    @like = Like.new(likes)
    if @like.save
      flash[:notice] = "Foto agregada a tus favoritos"
      redirect_to '/'
    end


  end
end
