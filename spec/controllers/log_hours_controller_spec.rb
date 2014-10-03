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

describe LogHoursController do

  # This should return the minimal set of attributes required to create a valid
  # LogHour. As you add validations to LogHour, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "hours" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LogHoursController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all log_hours as @log_hours" do
      log_hour = LogHour.create! valid_attributes
      get :index, {}, valid_session
      assigns(:log_hours).should eq([log_hour])
    end
  end

  describe "GET show" do
    it "assigns the requested log_hour as @log_hour" do
      log_hour = LogHour.create! valid_attributes
      get :show, {:id => log_hour.to_param}, valid_session
      assigns(:log_hour).should eq(log_hour)
    end
  end

  describe "GET new" do
    it "assigns a new log_hour as @log_hour" do
      get :new, {}, valid_session
      assigns(:log_hour).should be_a_new(LogHour)
    end
  end

  describe "GET edit" do
    it "assigns the requested log_hour as @log_hour" do
      log_hour = LogHour.create! valid_attributes
      get :edit, {:id => log_hour.to_param}, valid_session
      assigns(:log_hour).should eq(log_hour)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new LogHour" do
        expect {
          post :create, {:log_hour => valid_attributes}, valid_session
        }.to change(LogHour, :count).by(1)
      end

      it "assigns a newly created log_hour as @log_hour" do
        post :create, {:log_hour => valid_attributes}, valid_session
        assigns(:log_hour).should be_a(LogHour)
        assigns(:log_hour).should be_persisted
      end

      it "redirects to the created log_hour" do
        post :create, {:log_hour => valid_attributes}, valid_session
        response.should redirect_to(LogHour.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved log_hour as @log_hour" do
        # Trigger the behavior that occurs when invalid params are submitted
        LogHour.any_instance.stub(:save).and_return(false)
        post :create, {:log_hour => { "hours" => "invalid value" }}, valid_session
        assigns(:log_hour).should be_a_new(LogHour)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        LogHour.any_instance.stub(:save).and_return(false)
        post :create, {:log_hour => { "hours" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested log_hour" do
        log_hour = LogHour.create! valid_attributes
        # Assuming there are no other log_hours in the database, this
        # specifies that the LogHour created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        LogHour.any_instance.should_receive(:update).with({ "hours" => "MyString" })
        put :update, {:id => log_hour.to_param, :log_hour => { "hours" => "MyString" }}, valid_session
      end

      it "assigns the requested log_hour as @log_hour" do
        log_hour = LogHour.create! valid_attributes
        put :update, {:id => log_hour.to_param, :log_hour => valid_attributes}, valid_session
        assigns(:log_hour).should eq(log_hour)
      end

      it "redirects to the log_hour" do
        log_hour = LogHour.create! valid_attributes
        put :update, {:id => log_hour.to_param, :log_hour => valid_attributes}, valid_session
        response.should redirect_to(log_hour)
      end
    end

    describe "with invalid params" do
      it "assigns the log_hour as @log_hour" do
        log_hour = LogHour.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LogHour.any_instance.stub(:save).and_return(false)
        put :update, {:id => log_hour.to_param, :log_hour => { "hours" => "invalid value" }}, valid_session
        assigns(:log_hour).should eq(log_hour)
      end

      it "re-renders the 'edit' template" do
        log_hour = LogHour.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LogHour.any_instance.stub(:save).and_return(false)
        put :update, {:id => log_hour.to_param, :log_hour => { "hours" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested log_hour" do
      log_hour = LogHour.create! valid_attributes
      expect {
        delete :destroy, {:id => log_hour.to_param}, valid_session
      }.to change(LogHour, :count).by(-1)
    end

    it "redirects to the log_hours list" do
      log_hour = LogHour.create! valid_attributes
      delete :destroy, {:id => log_hour.to_param}, valid_session
      response.should redirect_to(log_hours_url)
    end
  end

end