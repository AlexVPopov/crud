require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe DriversController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Driver. As you add validations to Driver, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DriversController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all drivers as @drivers" do
      driver = Driver.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:drivers)).to eq([driver])
    end
  end

  describe "GET show" do
    it "assigns the requested driver as @driver" do
      driver = Driver.create! valid_attributes
      get :show, {:id => driver.to_param}, valid_session
      expect(assigns(:driver)).to eq(driver)
    end
  end

  describe "GET new" do
    it "assigns a new driver as @driver" do
      get :new, {}, valid_session
      expect(assigns(:driver)).to be_a_new(Driver)
    end
  end

  describe "GET edit" do
    it "assigns the requested driver as @driver" do
      driver = Driver.create! valid_attributes
      get :edit, {:id => driver.to_param}, valid_session
      expect(assigns(:driver)).to eq(driver)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Driver" do
        expect {
          post :create, {:driver => valid_attributes}, valid_session
        }.to change(Driver, :count).by(1)
      end

      it "assigns a newly created driver as @driver" do
        post :create, {:driver => valid_attributes}, valid_session
        expect(assigns(:driver)).to be_a(Driver)
        expect(assigns(:driver)).to be_persisted
      end

      it "redirects to the created driver" do
        post :create, {:driver => valid_attributes}, valid_session
        expect(response).to redirect_to(Driver.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved driver as @driver" do
        post :create, {:driver => invalid_attributes}, valid_session
        expect(assigns(:driver)).to be_a_new(Driver)
      end

      it "re-renders the 'new' template" do
        post :create, {:driver => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested driver" do
        driver = Driver.create! valid_attributes
        put :update, {:id => driver.to_param, :driver => new_attributes}, valid_session
        driver.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested driver as @driver" do
        driver = Driver.create! valid_attributes
        put :update, {:id => driver.to_param, :driver => valid_attributes}, valid_session
        expect(assigns(:driver)).to eq(driver)
      end

      it "redirects to the driver" do
        driver = Driver.create! valid_attributes
        put :update, {:id => driver.to_param, :driver => valid_attributes}, valid_session
        expect(response).to redirect_to(driver)
      end
    end

    describe "with invalid params" do
      it "assigns the driver as @driver" do
        driver = Driver.create! valid_attributes
        put :update, {:id => driver.to_param, :driver => invalid_attributes}, valid_session
        expect(assigns(:driver)).to eq(driver)
      end

      it "re-renders the 'edit' template" do
        driver = Driver.create! valid_attributes
        put :update, {:id => driver.to_param, :driver => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested driver" do
      driver = Driver.create! valid_attributes
      expect {
        delete :destroy, {:id => driver.to_param}, valid_session
      }.to change(Driver, :count).by(-1)
    end

    it "redirects to the drivers list" do
      driver = Driver.create! valid_attributes
      delete :destroy, {:id => driver.to_param}, valid_session
      expect(response).to redirect_to(drivers_url)
    end
  end

end
