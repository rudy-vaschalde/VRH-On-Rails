class AssistsController < ApplicationController
  before_action :set_assist, only: [:show, :edit, :update, :destroy]

  # GET /assists
  # GET /assists.json
  def index
    @assists = Assist.all
  end

  # GET /assists/1
  # GET /assists/1.json
  def show
  end

  # GET /assists/new
  def new
    @assist = Assist.new
  end

  # GET /assists/1/edit
  def edit
  end

  # POST /assists
  # POST /assists.json
  def create
    @assist = Assist.new(assist_params)

    respond_to do |format|
      if @assist.save
        format.html { redirect_to @assist, notice: 'Assist was successfully created.' }
        format.json { render :show, status: :created, location: @assist }
      else
        format.html { render :new }
        format.json { render json: @assist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assists/1
  # PATCH/PUT /assists/1.json
  def update
    respond_to do |format|
      if @assist.update(assist_params)
        format.html { redirect_to @assist, notice: 'Assist was successfully updated.' }
        format.json { render :show, status: :ok, location: @assist }
      else
        format.html { render :edit }
        format.json { render json: @assist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assists/1
  # DELETE /assists/1.json
  def destroy
    @assist.destroy
    respond_to do |format|
      format.html { redirect_to assists_url, notice: 'Assist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assist
      @assist = Assist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assist_params
      params.require(:assist).permit(:goal_id, :player_id)
    end
end
