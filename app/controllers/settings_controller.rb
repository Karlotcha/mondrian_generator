class SettingsController < ApplicationController
  def new
    unless Setting.find_by_status 'unknow'
      @setting = Setting.new
    
      @setting.border	 = rand 1..20
      @setting.size	   = rand 1..100
      @setting.size_p	 = rand 1..99
      @setting.white_p = rand 1..99
      @setting.black_p = rand 1..99
      @setting.status  = "unknow"
      
      @setting.save
    else
      @setting = Setting.find_by_status 'unknow'
    end
    
    @id = @setting.id
  end
 
  def update
    @setting = Setting.find(params[:id])
    
    if params[:status] == 'accepted'
      @setting.status  = "accepted"
    else
      @setting.status  = "rejected"
    end

    if @setting.save
      redirect_to action: "new" 
    end

  end

end
