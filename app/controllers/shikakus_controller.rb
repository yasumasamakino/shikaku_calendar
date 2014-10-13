class ShikakusController < ApplicationController
  before_action :set_shikaku, only: [:show, :edit, :update, :destroy]

  # GET /shikakus
  # GET /shikakus.json
  def index
    @shikakus = Shikaku.all
  end

  # GET /shikakus/1
  # GET /shikakus/1.json
  def show
  end

  # GET /shikakus/new
  def new
    @shikaku = Shikaku.new
  end

  # GET /shikakus/1/edit
  def edit
  end

  # POST /shikakus
  # POST /shikakus.json
  def create
    @shikaku = Shikaku.new(shikaku_params)

    respond_to do |format|
      if @shikaku.save
        format.html { redirect_to @shikaku, notice: 'Shikaku was successfully created.' }
        format.json { render :show, status: :created, location: @shikaku }
      else
        format.html { render :new }
        format.json { render json: @shikaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shikakus/1
  # PATCH/PUT /shikakus/1.json
  def update
    respond_to do |format|
      if @shikaku.update(shikaku_params)
        format.html { redirect_to @shikaku, notice: 'Shikaku was successfully updated.' }
        format.json { render :show, status: :ok, location: @shikaku }
      else
        format.html { render :edit }
        format.json { render json: @shikaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shikakus/1
  # DELETE /shikakus/1.json
  def destroy
    @shikaku.destroy
    respond_to do |format|
      format.html { redirect_to shikakus_url, notice: 'Shikaku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shikaku
      @shikaku = Shikaku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shikaku_params
      params.require(:shikaku).permit(:title, :detail)
    end
end
