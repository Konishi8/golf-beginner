class PracticeRecordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_practice_record, only: [:show, :edit, :update, :destroy]
  def index
    @practice_records = current_user.practice_records
  end

  def show
    # @practice_recordはset_practice_recordメソッドでセットされる
  end

  def new
    @practice_record = PracticeRecord.new
  end

  def create
    @practice_record = current_user.practice_records.build(practice_record_params)
    
    if @practice_record.save
      redirect_to @practice_record, notice: 'Practice record was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def practice_record_params
    params.require(:practice_record).permit(:practice_menu_id, :date, :goal, :comment)
  end

  def set_practice_record
    @practice_record = current_user.practice_records.find(params[:id])
  end
end
