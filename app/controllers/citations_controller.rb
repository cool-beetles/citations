class CitationsController < ApplicationController

  def index
    @citations = Citation.all
  end

  def new
  	@citation = Citation.new
  end

  def create
  	@citation = Citation.new(citation_params)

    @citation.save
    redirect_to root_path
  end

  private
    def citation_params
      params.require(:citation).permit(:citation_text)
    end
end
