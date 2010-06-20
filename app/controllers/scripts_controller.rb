class ScriptsController < ApplicationController
  active_scaffold :scripts do |config|
    config.label = "Scripts"
    config.columns = [:name]
#    list.columns.exclude :comments
    list.sorting = {:name => 'ASC'}
  end

  scriptffold :scripts, :content_field => :content
  scriptffold_button :action => "run", :icon => "/images/play.gif"


  def run
    s = Script.find(params[:id])
    s.content = params[:content]
    #DON'T save the script
    s.run # run the script
  end
end
