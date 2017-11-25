describe Logs::LogsController, type: :controller do
  routes { Logs::Engine.routes }

  describe 'GET index' do
    it 'should return 200' do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET index' do
    it 'should return 200' do
      get :show, { name: :test }
      expect(response).to have_http_status(:ok)
    end
  end
end
