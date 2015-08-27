class PagesController < ApplicationController

  layout "admin", only: [:index, :new, :edit]

  def show
    @page = Page.where(slug: params[:id]).first
  end

  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def edit
    @page = Page.where(slug: params[:id]).first
  end

  def create
    @page = Page.new(page_params)
    @page.save
    redirect_to pages_path
  end

  def update
    page = Page.find(params[:id])
    page.update_attributes(page_params)
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

  def news3
  end

  def news4
  end

  def news5
  end

  private
  def page_params
    params.require(:page).permit(
      :name,
      :title,
      :heading,
      :background_image,
      :content1,
      :content2,
      :content3
    )
  end
end
