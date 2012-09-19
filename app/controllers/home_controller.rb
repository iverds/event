class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.json {render json: ["Verryo", "Funnyyy"]}
      format.html  #index.html.erb
    end
  end
end
