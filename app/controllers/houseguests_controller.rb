class HouseguestsController < ApplicationController
  before_action :set_houseguest, only: [:show, :edit, :update, :destroy]

  # GET /houseguests
  # GET /houseguests.json
  def index
    @houseguests = Houseguest.all
  end

  # GET /houseguests/1
  # GET /houseguests/1.json
  def show
  end

  # GET /houseguests/new
  def new
    @houseguest = Houseguest.new
  end

  # GET /houseguests/1/edit
  def edit
  end

  # POST /houseguests
  # POST /houseguests.json
  def create
    @houseguest = Houseguest.new(houseguest_params)

    respond_to do |format|
      if @houseguest.save
        format.html { redirect_to @houseguest, notice: 'Houseguest was successfully created.' }
        format.json { render :show, status: :created, location: @houseguest }
      else
        format.html { render :new }
        format.json { render json: @houseguest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /houseguests/1
  # PATCH/PUT /houseguests/1.json
  def update
    respond_to do |format|
      if @houseguest.update(houseguest_params)
        format.html { redirect_to @houseguest, notice: 'Houseguest was successfully updated.' }
        format.json { render :show, status: :ok, location: @houseguest }
      else
        format.html { render :edit }
        format.json { render json: @houseguest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /houseguests/1
  # DELETE /houseguests/1.json
  def destroy
    @houseguest.destroy
    respond_to do |format|
      format.html { redirect_to houseguests_url, notice: 'Houseguest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_houseguest
      @houseguest = Houseguest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def houseguest_params
      params.require(:houseguest).permit(:name, :location, :latitude, :longitude, :age, :occupation, :season_id, :placed, :votes_against, :votes_to_win, :hoh, :nominated, :veto, :botb, :have_not, :first_day, :last_day, :prizes, :jury, :expelled, :walked)
    end
end
