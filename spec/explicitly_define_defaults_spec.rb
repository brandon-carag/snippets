require 'rails_helper'

describe "POODR style intializing" do

  it "does not create a zero numerator/denominator when responses are nil" do

    class Wheel
      attr_reader :chainring

      def initialize(args)
        args = defaults.merge(args)
        @chainring = args[:chainring]
      end

      def defaults
        {chainring: 40}
      end

    end

    expect(Wheel.new(chainring: 30).chainring).to eq(30)

  end

end
