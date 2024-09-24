class PracticeRecordsController < ApplicationController
  before_action :authenticate_user!
  def index
    @practice_records = current_user.practice_records
  end
end
