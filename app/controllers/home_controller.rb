class HomeController < ApplicationController
  before_action :set_pine, only: [:show, :edit, :update, :destroy]

  # GET /pines
  # GET /pines.json
  def index
    @pines = Pine.where(:user_id => current_user.id).all
  end

  end
