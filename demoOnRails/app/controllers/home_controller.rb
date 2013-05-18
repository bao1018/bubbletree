class HomeController < ApplicationController
  def index
  end
  
  def getChildren
     puts "#{params}"
     amount = params[:amount] ||= 10
     result = []
     for i in 0..10
       result.push({
         :label => "Dummy-" + i.to_s,
         :shortLabel => "Dummy-" + i.to_s,
         :color => '#23d2de',
         :amount =>  amount.to_i * Random.rand(10)*0.04
       })
     end
    
     render :json => result.to_json
  end
end
