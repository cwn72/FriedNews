require 'rails_helper'

RSpec.describe Headline, :type => :model do

  before(:each) do
    @headline = Headline.new(title: 'some amazing news!', ref: 'http://www.google.com', time: Time.now )
  end

  it 'has a title' do
    @headline.title = ''

    expect(@headline.valid?).to be(false)
  end

  it 'title is at least 10 characters long' do
    @headline.title = 'a'*5
    expect(@headline.valid?).to be(false)
    @headline.title = 'a'*10
    expect(@headline.valid?).to be(true)
  end

  it 'title should be no more than 255 characters long' do
    @headline.title = 'a'*255
    expect(@headline.valid?).to be(true)
    @headline.title = 'a'*256
    expect(@headline.valid?).to be(false)
  end

  it 'has a ref link' do
    @headline.ref = ''
    expect(@headline.valid?).to be(false)
  end

  it 'has a ref link with a valid format' do
    @headline.ref = 'http://www.google.com'
    expect(@headline.valid?).to be(true)

    @headline.ref = 'this is not a link'
    expect(@headline.valid?).to be(false)

  end

  it 'has a time' do
    @headline.time = 0
    expect(@headline.valid?).to be(false)

    @headline.time = Time.now
    expect(@headline.valid?).to be(true)
  end

end
