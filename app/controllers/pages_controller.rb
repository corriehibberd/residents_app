class PagesController < ApplicationController

  layout "admin", only: [:index, :new]

  def show
    @page = Page.where(slug: params[:id]).first
  end

  def index
    @pages = Page.all 
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    @page.save
    redirect_to pages_path
  end 

  def home
  end

  def contact
  end

  def constitution
  end

  def testing
  end

  def about
  end

  def news
  end

  def history
  end

  def find
  end

  def members
  end

  def chairman
  end

  def directory
  end

  def news1
  end

  def gallery
  end

  def events
  end

  def news2
  end

  private
  def page_params
    params.require(:page).permit(:name, :title, :content)
  end
end
