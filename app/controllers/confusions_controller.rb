class ConfusionsController < ApplicationController
  before_action :set_confusion, only: [:show, :edit, :update, :destroy]

  # GET /confusions
  # GET /confusions.json
  def index
    @confusions = Confusion.all
  end

  # GET /confusions/1
  # GET /confusions/1.json
  def show
  end

  # GET /confusions/new
  def new
    @confusion = Confusion.new
  end

  # GET /confusions/1/edit
  def edit
  end

  # POST /confusions
  # POST /confusions.json
  def create
    @confusion = Confusion.new(confusion_params)

    respond_to do |format|
      if @confusion.save
        format.html { redirect_to @confusion, notice: 'Confusion was successfully created.' }
        format.json { render :show, status: :created, location: @confusion }
      else
        format.html { render :new }
        format.json { render json: @confusion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /confusions/1
  # PATCH/PUT /confusions/1.json
  def update
    respond_to do |format|
      if @confusion.update(confusion_params)
        format.html { redirect_to @confusion, notice: 'Confusion was successfully updated.' }
        format.json { render :show, status: :ok, location: @confusion }
      else
        format.html { render :edit }
        format.json { render json: @confusion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confusions/1
  # DELETE /confusions/1.json
  def destroy
    @confusion.destroy
    respond_to do |format|
      format.html { redirect_to confusions_url, notice: 'Confusion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_confusion
      @confusion = Confusion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def confusion_params
      params.require(:confusion).permit(:name, :emotion_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :states, :attitudes, :affection, :drug, :side_effects, :causes, :psychology, :theroy)
    end
end
