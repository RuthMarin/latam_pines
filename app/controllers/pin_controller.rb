class PinController < ApplicationController
  before_action :set_pine, only: [:show, :edit, :update, :destroy]

  def index
    @pines = Pine.all
  end
end
