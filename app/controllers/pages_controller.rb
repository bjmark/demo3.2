class PagesController < ApplicationController
  def show
    render params[:id]
  end

  def show2
    flash[:error] = 'something wrong'
    redirect_to  '/pages/redirect'
  end
  
  def show3
    redirect_to  '/pages/redirect'
  end

  def checkbox
  end
end
