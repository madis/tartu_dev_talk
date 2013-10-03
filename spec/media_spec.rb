require 'spec_helper'

describe 'Media on pages' do
  it 'has video element' do
    visit '/'
    expect(page).to have_selector('video.source')
  end
end
