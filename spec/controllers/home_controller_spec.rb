require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe '#index' do
    it { expect(get :index).to be_successful }
    it { expect(response.status).to eq(200) }
  end
end
