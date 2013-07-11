require 'spec_helper'

describe PagesController do
  specify 'redirect_to ' do
    get :show,:id => 'redirect'
    response.should redirect_to('/pages/redirect') 
    assigns(:a).should == 'abc'
  end
end
