class SmellsController < ApplicationController
  before_action :set_smell, only: [:show, :edit, :update, :destroy]

  # GET /smells
  # GET /smells.json
  def index
    @smells = Smell.all
  end

  # GET /smells/1
  # GET /smells/1.json
  def show
  end

  # GET /smells/new
  def new
    @smell = Smell.new
  end

  # GET /smells/1/edit
  def edit
  end

  # POST /smells
  # POST /smells.json
  def create
    @smell = Smell.new(smell_params)

    respond_to do |format|
      if @smell.save
        format.html { redirect_to @smell, notice: 'Smell was successfully created.' }
        format.json { render :show, status: :created, location: @smell }
      else
        format.html { render :new }
        format.json { render json: @smell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smells/1
  # PATCH/PUT /smells/1.json
  def update
    respond_to do |format|
      if @smell.update(smell_params)
        format.html { redirect_to @smell, notice: 'Smell was successfully updated.' }
        format.json { render :show, status: :ok, location: @smell }
      else
        format.html { render :edit }
        format.json { render json: @smell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smells/1
  # DELETE /smells/1.json
  def destroy
    @smell.destroy
    respond_to do |format|
      format.html { redirect_to smells_url, notice: 'Smell was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smell
      @smell = Smell.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smell_params
      params.require(:smell).permit(:subtype, :duration, :detection, :effect, :nervous_system)
    end
end
