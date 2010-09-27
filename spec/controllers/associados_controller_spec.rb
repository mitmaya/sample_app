require 'spec_helper'

describe AssociadosController do

  def mock_associado(stubs={})
    @mock_associado ||= mock_model(Associado, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all associados as @associados" do
      Associado.stub(:all) { [mock_associado] }
      get :index
      assigns(:associados).should eq([mock_associado])
    end
  end

  describe "GET show" do
    it "assigns the requested associado as @associado" do
      Associado.stub(:find).with("37") { mock_associado }
      get :show, :id => "37"
      assigns(:associado).should be(mock_associado)
    end
  end

  describe "GET new" do
    it "assigns a new associado as @associado" do
      Associado.stub(:new) { mock_associado }
      get :new
      assigns(:associado).should be(mock_associado)
    end
  end

  describe "GET edit" do
    it "assigns the requested associado as @associado" do
      Associado.stub(:find).with("37") { mock_associado }
      get :edit, :id => "37"
      assigns(:associado).should be(mock_associado)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created associado as @associado" do
        Associado.stub(:new).with({'these' => 'params'}) { mock_associado(:save => true) }
        post :create, :associado => {'these' => 'params'}
        assigns(:associado).should be(mock_associado)
      end

      it "redirects to the created associado" do
        Associado.stub(:new) { mock_associado(:save => true) }
        post :create, :associado => {}
        response.should redirect_to(associado_url(mock_associado))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved associado as @associado" do
        Associado.stub(:new).with({'these' => 'params'}) { mock_associado(:save => false) }
        post :create, :associado => {'these' => 'params'}
        assigns(:associado).should be(mock_associado)
      end

      it "re-renders the 'new' template" do
        Associado.stub(:new) { mock_associado(:save => false) }
        post :create, :associado => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested associado" do
        Associado.should_receive(:find).with("37") { mock_associado }
        mock_associado.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :associado => {'these' => 'params'}
      end

      it "assigns the requested associado as @associado" do
        Associado.stub(:find) { mock_associado(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:associado).should be(mock_associado)
      end

      it "redirects to the associado" do
        Associado.stub(:find) { mock_associado(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(associado_url(mock_associado))
      end
    end

    describe "with invalid params" do
      it "assigns the associado as @associado" do
        Associado.stub(:find) { mock_associado(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:associado).should be(mock_associado)
      end

      it "re-renders the 'edit' template" do
        Associado.stub(:find) { mock_associado(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested associado" do
      Associado.should_receive(:find).with("37") { mock_associado }
      mock_associado.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the associados list" do
      Associado.stub(:find) { mock_associado }
      delete :destroy, :id => "1"
      response.should redirect_to(associados_url)
    end
  end

end
