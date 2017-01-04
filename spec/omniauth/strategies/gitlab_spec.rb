require 'spec_helper'

describe OmniAuth::Strategies::Sourceforge do

  let(:access_token) { double('AccessToken') }
  let(:parsed_response) { double('ParsedResponse') }
  let(:response) { double('Response', parsed: parsed_response) }

  let(:sourceforge_service) { OmniAuth::Strategies::Sourceforge.new({}) }

  subject { sourceforge_service }

  before(:each) do
    allow(subject).to receive(:access_token).and_return(access_token)
  end

  describe 'client options' do
    context 'with defaults' do
      subject { sourceforge_service.options.client_options }

      its(:site) { is_expected.to eq 'https://sourceforge.net' }
      its(:authorize_url) { is_expected.to eq '/oauth/authorize' }
      its(:token_url) { is_expected.to eq '/oauth/token' }
    end

  end

  describe 'redirect_url' do
    context 'with defaults' do
      subject { sourceforge_service.options }
      its(:redirect_url) { is_expected.to be_nil }
    end
  end
end
