class PracticeRecordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_practice_record, only: %i[show edit destroy update]

  def update
    if @practice_record.update(practice_record_params)
      redirect_to @practice_record, notice: '練習記録が更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @practice_record.destroy
    redirect_to practice_records_path, notice: '練習記録が削除されました。'
  end

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
      redirect_to @practice_record, notice: '練習記録が作成されました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  private

  def practice_record_params
    params.require(:practice_record).permit(:practice_menu_id, :date, :goal, :comment)
  end

  def set_practice_record
    @practice_record = current_user.practice_records.find(params[:id])
  end
end
