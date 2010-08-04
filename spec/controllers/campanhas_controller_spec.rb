require 'spec_helper'

describe CampanhasController do

  def mock_campanha(stubs={})
    @mock_campanha ||= mock_model(Campanha, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all campanhas as @campanhas" do
      Campanha.stub(:all) { [mock_campanha] }
      get :index
      assigns(:campanhas).should eq([mock_campanha])
    end
  end

  describe "GET show" do
    it "assigns the requested campanha as @campanha" do
      Campanha.stub(:find).with("37") { mock_campanha }
      get :show, :id => "37"
      assigns(:campanha).should be(mock_campanha)
    end
  end

  describe "GET new" do
    it "assigns a new campanha as @campanha" do
      Campanha.stub(:new) { mock_campanha }
      get :new
      assigns(:campanha).should be(mock_campanha)
    end
  end

  describe "GET edit" do
    it "assigns the requested campanha as @campanha" do
      Campanha.stub(:find).with("37") { mock_campanha }
      get :edit, :id => "37"
      assigns(:campanha).should be(mock_campanha)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created campanha as @campanha" do
        Campanha.stub(:new).with({'these' => 'params'}) { mock_campanha(:save => true) }
        post :create, :campanha => {'these' => 'params'}
        assigns(:campanha).should be(mock_campanha)
      end

      it "redirects to the created campanha" do
        Campanha.stub(:new) { mock_campanha(:save => true) }
        post :create, :campanha => {}
        response.should redirect_to(campanha_url(mock_campanha))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved campanha as @campanha" do
        Campanha.stub(:new).with({'these' => 'params'}) { mock_campanha(:save => false) }
        post :create, :campanha => {'these' => 'params'}
        assigns(:campanha).should be(mock_campanha)
      end

      it "re-renders the 'new' template" do
        Campanha.stub(:new) { mock_campanha(:save => false) }
        post :create, :campanha => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested campanha" do
        Campanha.should_receive(:find).with("37") { mock_campanha }
        mock_campanha.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :campanha => {'these' => 'params'}
      end

      it "assigns the requested campanha as @campanha" do
        Campanha.stub(:find) { mock_campanha(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:campanha).should be(mock_campanha)
      end

      it "redirects to the campanha" do
        Campanha.stub(:find) { mock_campanha(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(campanha_url(mock_campanha))
      end
    end

    describe "with invalid params" do
      it "assigns the campanha as @campanha" do
        Campanha.stub(:find) { mock_campanha(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:campanha).should be(mock_campanha)
      end

      it "re-renders the 'edit' template" do
        Campanha.stub(:find) { mock_campanha(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested campanha" do
      Campanha.should_receive(:find).with("37") { mock_campanha }
      mock_campanha.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the campanhas list" do
      Campanha.stub(:find) { mock_campanha }
      delete :destroy, :id => "1"
      response.should redirect_to(campanhas_url)
    end
  end

end
