class AngersController < ApplicationController
  before_action :set_anger, only: [:show, :edit, :update, :destroy]

  # GET /angers
  # GET /angers.json
  def index
    @angers = Anger.all
  end

  # GET /angers/1
  # GET /angers/1.json
  def show
  end

  # GET /angers/new
  def new
    @anger = Anger.new
  end

  # GET /angers/1/edit
  def edit
  end

  # POST /angers
  # POST /angers.json
  def create
    @anger = Anger.new(anger_params)

    respond_to do |format|
      if @anger.save
        format.html { redirect_to @anger, notice: 'Anger was successfully created.' }
        format.json { render :show, status: :created, location: @anger }
      else
        format.html { render :new }
        format.json { render json: @anger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /angers/1
  # PATCH/PUT /angers/1.json
  def update
    respond_to do |format|
      if @anger.update(anger_params)
        format.html { redirect_to @anger, notice: 'Anger was successfully updated.' }
        format.json { render :show, status: :ok, location: @anger }
      else
        format.html { render :edit }
        format.json { render json: @anger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /angers/1
  # DELETE /angers/1.json
  def destroy
    @anger.destroy
    respond_to do |format|
      format.html { redirect_to angers_url, notice: 'Anger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anger
      @anger = Anger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anger_params
      params.require(:anger).permit(:name,:emotion_name,:title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :states, :attitudes, :affection, :drug, :side_effects, :passive, :aggressive, :experssions,  :causes, :theory, :strategies, :psychology, :neurology)
    end
end
