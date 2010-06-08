class ScriptsController < ApplicationController
  scriptffolding :scripts, :content_field => :content
  scriptffolding_button :action => "run", :icon => "/images/play.gif"
end
