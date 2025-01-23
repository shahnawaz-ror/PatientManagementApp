require 'rails_helper'

RSpec.describe PatientsController, type: :controller do
  let(:user) { create(:user) }
  let!(:patient) { create(:patient, user: user) }

  before { sign_in user }

  describe "GET #index" do
    it "returns the list of patients for the current user" do
      get :index
      expect(assigns(:patients)).to include(patient)
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET #show" do
    it "shows the requested patient" do
      get :show, params: { id: patient.id }
      expect(assigns(:patient)).to eq(patient)
      expect(response).to have_http_status(:ok)
    end
  end

  describe "POST #create" do
    it "does not create a new patient with invalid parameters" do
      expect {
        post :create, params: { patient: attributes_for(:patient, name: nil) }
      }.to_not change(Patient, :count)
      expect(response).to render_template(:new)
    end
  end

  describe "PATCH #update" do
    it "updates the patient with valid parameters" do
      patch :update, params: { id: patient.id, patient: { name: "Updated Name" } }
      patient.reload
      expect(patient.name).to eq("Updated Name")
      expect(response).to redirect_to(patient)
    end

    it "does not update the patient with invalid parameters" do
      patch :update, params: { id: patient.id, patient: { name: nil } }
      expect(patient.reload.name).not_to be_nil
      expect(response).to render_template(:edit)
    end
  end

  describe "DELETE #destroy" do
    it "deletes the patient" do
      expect {
        delete :destroy, params: { id: patient.id }
      }.to change(Patient, :count).by(-1)
      expect(response).to redirect_to(patients_path)
    end
  end
end
