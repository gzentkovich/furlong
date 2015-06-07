require 'rspec'
require 'spec_helper'
require './furlong'

describe Furlong do
  it "converts 1 mile to 1.60934 km" do
    calc = Furlong.new
    km = calc.miles_to_kilometers(1)
    km.should be_within(0.0001).of(1.60934)
  end

  it "converts a marathon: 26.219 miles to 42.194988 km" do
    calc = Furlong.new
    km = calc.miles_to_kilometers(26.219)
    km.should be_within(0.0001).of(42.19528547777777)
  end
end
