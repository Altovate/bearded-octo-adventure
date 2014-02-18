require 'spec_helper'

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

describe Usage::ContractsController do

  # This should return the minimal set of attributes required to create a valid
  # Usage::Contract. As you add validations to Usage::Contract, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Usage::ContractsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all usage_contracts as @usage_contracts" do
      pending "Broken"
      contract = Usage::Contract.create! valid_attributes
      get :index, {}, valid_session
      assigns(:usage_contracts).should eq([contract])
    end
  end

  describe "GET show" do
    it "assigns the requested usage_contract as @usage_contract" do
      pending "Broken"
      contract = Usage::Contract.create! valid_attributes
      get :show, {:id => contract.to_param}, valid_session
      assigns(:usage_contract).should eq(contract)
    end
  end

  describe "GET new" do
    it "assigns a new usage_contract as @usage_contract" do
      pending "Broken"
      get :new, {}, valid_session
      assigns(:usage_contract).should be_a_new(Usage::Contract)
    end
  end

  describe "GET edit" do
    it "assigns the requested usage_contract as @usage_contract" do
      pending "Broken"
      contract = Usage::Contract.create! valid_attributes
      get :edit, {:id => contract.to_param}, valid_session
      assigns(:usage_contract).should eq(contract)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Usage::Contract" do
        pending "Broken"
        expect {
          post :create, {:usage_contract => valid_attributes}, valid_session
        }.to change(Usage::Contract, :count).by(1)
      end

      it "assigns a newly created usage_contract as @usage_contract" do
        pending "Broken"
        post :create, {:usage_contract => valid_attributes}, valid_session
        assigns(:usage_contract).should be_a(Usage::Contract)
        assigns(:usage_contract).should be_persisted
      end

      it "redirects to the created usage_contract" do
        pending "Broken"
        post :create, {:usage_contract => valid_attributes}, valid_session
        response.should redirect_to(Usage::Contract.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved usage_contract as @usage_contract" do
        pending "Broken"
        # Trigger the behavior that occurs when invalid params are submitted
        Usage::Contract.any_instance.stub(:save).and_return(false)
        post :create, {:usage_contract => {  }}, valid_session
        assigns(:usage_contract).should be_a_new(Usage::Contract)
      end

      it "re-renders the 'new' template" do
        pending "Broken"
        # Trigger the behavior that occurs when invalid params are submitted
        Usage::Contract.any_instance.stub(:save).and_return(false)
        post :create, {:usage_contract => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested usage_contract" do
        pending "Broken"
        contract = Usage::Contract.create! valid_attributes
        # Assuming there are no other usage_contracts in the database, this
        # specifies that the Usage::Contract created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Usage::Contract.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => contract.to_param, :usage_contract => { "these" => "params" }}, valid_session
      end

      it "assigns the requested usage_contract as @usage_contract" do
        pending "Broken"
        contract = Usage::Contract.create! valid_attributes
        put :update, {:id => contract.to_param, :usage_contract => valid_attributes}, valid_session
        assigns(:usage_contract).should eq(contract)
      end

      it "redirects to the usage_contract" do
        pending "Broken"
        contract = Usage::Contract.create! valid_attributes
        put :update, {:id => contract.to_param, :usage_contract => valid_attributes}, valid_session
        response.should redirect_to(contract)
      end
    end

    describe "with invalid params" do
      it "assigns the usage_contract as @usage_contract" do
        pending "Broken"
        contract = Usage::Contract.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Usage::Contract.any_instance.stub(:save).and_return(false)
        put :update, {:id => contract.to_param, :usage_contract => {  }}, valid_session
        assigns(:usage_contract).should eq(contract)
      end

      it "re-renders the 'edit' template" do
        pending "Broken"
        contract = Usage::Contract.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Usage::Contract.any_instance.stub(:save).and_return(false)
        put :update, {:id => contract.to_param, :usage_contract => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested usage_contract" do
      pending "Broken"
      contract = Usage::Contract.create! valid_attributes
      expect {
        delete :destroy, {:id => contract.to_param}, valid_session
      }.to change(Usage::Contract, :count).by(-1)
    end

    it "redirects to the usage_contracts list" do
      pending "Broken"
      contract = Usage::Contract.create! valid_attributes
      delete :destroy, {:id => contract.to_param}, valid_session
      response.should redirect_to(usage_contracts_url)
    end
  end

end
