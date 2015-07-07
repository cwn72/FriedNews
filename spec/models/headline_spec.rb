require 'rails_helper'

RSpec.describe Headline, :type => :model do

  before(:each) do
    @headline = Headline.new(title: 'some amazing news!', ref: 'http://www.google.com', time: Time.now )
  end

  it 'has a title' do
    @headline.title = ''

    expect(@headline.valid?).to be(FALSE)
  end

end
