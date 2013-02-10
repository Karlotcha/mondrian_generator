class SettingsController < ApplicationController
  def new
    unless Generation.first 
      Generation.new.update_attribute(:n, 0)
    end

    unless @setting = Setting.find_by_status('unknown')
      generate
    else
      @setting
    end
    
    @id = @setting.id
  end
 
  def update
    @setting = Setting.find_by_id(params[:id])
    
    if @setting && @setting.status == "unknown"
      if params[:status] == 'accepted'
        @setting.status  = "accepted"
        @setting.save
      else
        @setting.destroy
      end
    end

    redirect_to action: "new" 
  end

  def generate
    current_generation = Generation.last
    current_n = current_generation.n
    
    if current_n == 0
      @setting = Setting.new
    
      @setting.border	 = rand 1..20
      @setting.size	   = rand 1..100
      @setting.size_p	 = rand 1..99
      @setting.white_p = rand 1..99
      @setting.black_p = rand 1..99
    else
      parents = Generation.find_by_n(current_n - 1).settings
      parent1 = parents.sample
      parent2 = parents.sample
      @setting = Setting.new
      
      [:border, :size, :size_p, :white_p, :black_p].each_with_index do |e, i|
        @setting[e] = [parent1[e], parent2[e], ((parent1[e]+parent2[e])/2).to_i].sample
        @setting[e] = [rand(1..20), rand(1..100), rand(1..99), rand(1..99), rand(1..99)][i] if rand(50) == 0
      end
    
    end
    @setting.status  = "unknown"
    @setting.generation = current_generation
    @setting.save
  end
end
