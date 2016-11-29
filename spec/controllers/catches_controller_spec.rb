require 'rails_helper'

RSpec.describe CatchesController, type: :controller do
  let(:valid_attributes) {  { angler_name: 'Luke' } }

  describe "GET #index" do
    before do
      Catch.create! valid_attributes
      get :index
    end

    it "returns one catch" do
      expect(json_response.size).to eq(1)
    end

    it "returns needed fields of catch" do
      expect(json_response.first).to include("angler_name" => "Luke")
    end
  end

  describe "GET #show" do
    before do
      catch = Catch.create! valid_attributes
      get :show, params: {id: catch.to_param}
    end

    it "returns needed fields of catch" do
      expect(json_response).to include("angler_name" => "Luke")
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Catch" do
        expect {
          post :create, params: {catch: valid_attributes}
        }.to change(Catch, :count).by(1)
      end

      it "responses 201 code" do
        post :create, params: {catch: valid_attributes}
        expect(response.code).to eq("201")
      end

      it "returns created catch" do
        post :create, params: {catch: valid_attributes}
        expect(json_response).to include("angler_name" => "Luke")
      end
    end

    context "with invalid params" do
      before do
        post :create, params: {catch: { angler_name: '' }}
      end

      it "responses 422 code" do
        expect(response.code).to eq("422")
      end

      it "returns errors hash" do
        expect(json_response).to include("angler_name" => ["can't be blank"])
      end
    end
  end

  def json_response
    JSON.parse(response.body)
  end
end
