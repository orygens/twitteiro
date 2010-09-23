require 'spec_helper'

describe SupportshipsController do

  def mock_supportship(stubs={})
    @mock_supportship ||= mock_model(Supportship, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all supportships as @supportships" do
      Supportship.stub(:all) { [mock_supportship] }
      get :index
      assigns(:supportships).should eq([mock_supportship])
    end
  end

  describe "GET show" do
    it "assigns the requested supportship as @supportship" do
      Supportship.stub(:find).with("37") { mock_supportship }
      get :show, :id => "37"
      assigns(:supportship).should be(mock_supportship)
    end
  end

  describe "GET new" do
    it "assigns a new supportship as @supportship" do
      Supportship.stub(:new) { mock_supportship }
      get :new
      assigns(:supportship).should be(mock_supportship)
    end
  end

  describe "GET edit" do
    it "assigns the requested supportship as @supportship" do
      Supportship.stub(:find).with("37") { mock_supportship }
      get :edit, :id => "37"
      assigns(:supportship).should be(mock_supportship)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created supportship as @supportship" do
        Supportship.stub(:new).with({'these' => 'params'}) { mock_supportship(:save => true) }
        post :create, :supportship => {'these' => 'params'}
        assigns(:supportship).should be(mock_supportship)
      end

      it "redirects to the created supportship" do
        Supportship.stub(:new) { mock_supportship(:save => true) }
        post :create, :supportship => {}
        response.should redirect_to(supportship_url(mock_supportship))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved supportship as @supportship" do
        Supportship.stub(:new).with({'these' => 'params'}) { mock_supportship(:save => false) }
        post :create, :supportship => {'these' => 'params'}
        assigns(:supportship).should be(mock_supportship)
      end

      it "re-renders the 'new' template" do
        Supportship.stub(:new) { mock_supportship(:save => false) }
        post :create, :supportship => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested supportship" do
        Supportship.should_receive(:find).with("37") { mock_supportship }
        mock_supportship.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :supportship => {'these' => 'params'}
      end

      it "assigns the requested supportship as @supportship" do
        Supportship.stub(:find) { mock_supportship(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:supportship).should be(mock_supportship)
      end

      it "redirects to the supportship" do
        Supportship.stub(:find) { mock_supportship(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(supportship_url(mock_supportship))
      end
    end

    describe "with invalid params" do
      it "assigns the supportship as @supportship" do
        Supportship.stub(:find) { mock_supportship(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:supportship).should be(mock_supportship)
      end

      it "re-renders the 'edit' template" do
        Supportship.stub(:find) { mock_supportship(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested supportship" do
      Supportship.should_receive(:find).with("37") { mock_supportship }
      mock_supportship.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the supportships list" do
      Supportship.stub(:find) { mock_supportship }
      delete :destroy, :id => "1"
      response.should redirect_to(supportships_url)
    end
  end

end
