class SettingsController < ApplicationController
  # GET /settings/new
  # GET /settings/new.json
  def new
    @setting = Setting.new
	
    @setting.border	 = rand 1..20
    @setting.size	   = rand 1..100
    @setting.size_p	 = rand 1..99
    @setting.white_p = rand 1..99
    @setting.black_p = rand 1..99

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @setting }
    end
  end
end
