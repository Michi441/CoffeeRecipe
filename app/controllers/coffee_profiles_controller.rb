class CoffeeProfilesController < ApplicationController
  before_action :set_coffee_profile, only: [:show, :edit, :update, :destroy]

  # GET /coffee_profiles
  # GET /coffee_profiles.json
  def index
    @coffee_profiles = CoffeeProfile.all
  end

  # GET /coffee_profiles/1
  # GET /coffee_profiles/1.json
  def show
    @coffee_profile = CoffeeProfile.find(params[:id])
    
  end

  # GET /coffee_profiles/new
  def new
    @coffee_profile = CoffeeProfile.new
  end

  # GET /coffee_profiles/1/edit
  def edit
  end

  # POST /coffee_profiles
  # POST /coffee_profiles.json
  def create
    @coffee_profile = CoffeeProfile.new(coffee_profile_params)

    respond_to do |format|
      if @coffee_profile.save
        format.html { redirect_to @coffee_profile, notice: 'Coffee profile was successfully created.' }
        format.json { render :show, status: :created, location: @coffee_profile }
      else
        format.html { render :new }
        format.json { render json: @coffee_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coffee_profiles/1
  # PATCH/PUT /coffee_profiles/1.json
  def update
    respond_to do |format|
      if @coffee_profile.update(coffee_profile_params)
        format.html { redirect_to @coffee_profile, notice: 'Coffee profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @coffee_profile }
      else
        format.html { render :edit }
        format.json { render json: @coffee_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coffee_profiles/1
  # DELETE /coffee_profiles/1.json
  def destroy
    @coffee_profile.destroy
    respond_to do |format|
      format.html { redirect_to coffee_profiles_url, notice: 'Coffee profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffee_profile
      @coffee_profile = CoffeeProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coffee_profile_params
      params.require(:coffee_profile).permit(:title, :description)
    end
end
