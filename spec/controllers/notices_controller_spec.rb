require 'rails_helper'

RSpec.describe NoticesController, type: :controller do
  let(:group) { create(:group) }
  let(:week) { create(:week, group: group) }
  let!(:days) { create_list(:day, 7, week: week) }

  describe 'POST #create_inline' do
    context 'with valid attributes' do
      it 'saves a new notice in the database' do
        expect { post :create_inline, params: { day_id: days.first, notice: attributes_for(:notice) } }.to change(Notice, :count).by(1)
      end
    end

    context 'with invalid attributes' do
      it "doesn't save the notice" do
        expect { post :create_inline, params: { day_id: days.first, notice: attributes_for(:notice, :invalid) } }.to_not change(Notice, :count)
      end
    end
  end
end

