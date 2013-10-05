require 'spec_helper'

describe 'Media on pages' do
  it 'has a page' do
    visit '/'
    expect(page.status_code).to be(200)
  end
end
