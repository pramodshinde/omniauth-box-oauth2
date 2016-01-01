require 'spec_helper'
require 'omniauth-box-oauth2'

describe OmniAuth::Strategies::BoxOauth2 do
  it 'has a version number' do
    expect(OmniAuth::BoxOauth2::VERSION).not_to be nil
  end
end
