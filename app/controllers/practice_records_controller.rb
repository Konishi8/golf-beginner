class PracticeRecordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_practice_record, only: [:show, :edit, :update, :destroy]
  def index
    @practice_records = current_user.practice_records
  end

  def show
    # @practice_recordはset_practice_recordメソッドでセットされる
  end

  private

  def set_practice_record
    @practice_record = current_user.practice_records.find(params[:id])
  end
end
