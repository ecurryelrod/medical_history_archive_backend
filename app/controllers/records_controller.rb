class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :update, :destroy]

  # GET /records
  def index
    records = Record.all

    # render json: RecordSerializer.new(records)
    render json: records
  end

  # GET /records/1
  def show
    # render json: RecordSerializer.new(@record)
    render json: @record
  end

  # POST /records
  def create
    record = Record.new(record_params)

    if record.save
      render json: record, status: :created, location: record
    else
      render json: record.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /records/1
  def update
    if @record.update(record_params)
      render json: @record
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end

  # DELETE /records/1
  def destroy
    if @record.destroy
      render json: {message: 'Record successfully deleted'}
    else
      render json: {message: "#{@record.errors.full_messages}"}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def record_params
      params.require(:record).permit(:doc_name, :practice_name, :url, :date, :phone, :medications, :med_notes, :comments, :category_id)
    end
end
