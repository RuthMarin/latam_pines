class PinesController < ApplicationController
  before_action :set_pine, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]
  # GET /pines
  # GET /pines.json



  def index
    if params[:q].present?
      @pines = Pine.where('nombre like ?', "%#{params[:q]}%")
      @likes = Like.all
    else
      @pines = Pine.all
      @likes = Like.all
    end
  end

  # GET /pines/1
  # GET /pines/1.json
  def show


  end

  # GET /pines/new
  def new
    @pine = Pine.new
  end

  # GET /pines/1/edit
  def edit
  end

  # POST /pines
  # POST /pines.json
  def create
    @pine = Pine.new(pine_params)
    @pine.user= current_user
    respond_to do |format|
      if @pine.save
        format.html { redirect_to @pine, notice: 'Pine was successfully created.' }
        format.json { render :show, status: :created, location: @pine }
      else
        format.html { render :new }
        format.json { render json: @pine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pines/1
  # PATCH/PUT /pines/1.json
  def update
    respond_to do |format|
      if @pine.update(pine_params)
        format.html { redirect_to @pine, notice: 'Pine was successfully updated.' }
        format.json { render :show, status: :ok, location: @pine }
      else
        format.html { render :edit }
        format.json { render json: @pine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pines/1
  # DELETE /pines/1.json
  def destroy
    @pine.destroy
    respond_to do |format|
      format.html { redirect_to pines_url, notice: 'Pine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pine
      @pine = Pine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pine_params
      @user_oid = current_user.id
      params.require(:pine).permit(:nombre, :descripcion, :foto, :likes)
    end
end
