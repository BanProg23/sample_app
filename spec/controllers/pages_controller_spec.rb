require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  render_views

  before(:each) do
    # Define @base_titre here.
    @base_titre = "Simple App du Tutoriel Ruby on Rails"
  end

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

    it "devrait avoir le bon titre" do
      get 'home'
      expect(response.body).to have_title("#{@base_title}  | Accueil")
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
   
    it "devrait avoir le bon titre" do
      get 'contact'
      expect(response.body).to have_title("#{@base_title} | Contact")
    end
  end

  describe "Get #about" do
    it "returns http succes" do
      get :about
      expect(response).to have_http_status(:success)
    end 

    it "devrait avoir le bon titre" do
      get 'about'
      expect(response.body).to have_title("#{@base_title} | A Propos")
    end
  end

  describe "Get #help" do
    it "returns http succes" do
      get :help
      expect(response).to have_http_status(:success)
    end 

    it "devrait avoir le bon titre" do
      get 'help'
      expect(response.body).to have_title("#{@base_title} | Aide")
    end
  end

end
