class ScriptsController < ApplicationController
  scriptffold :scripts, :content_field => :content
  scriptffold_button :action => "run", :icon => "/images/play.gif"

  def run
    s = Script.find(params[:id])
    s.content = params[:content]
    #DON'T save the script
    s.run # run the script
  end
end
