require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  let(:group) { create(:group) }

  describe 'GET #index' do
    before { get :index }

    it 'renders show view' do
      expect(response).to render_template :show
    end
  end

  describe 'GET #show' do
    before { get :show, params: { id: group } }

    it 'renders show view' do
      expect(response).to render_template :show
    end
  end
end

