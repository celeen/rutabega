require "spec_helper"
require "custom_helpers"

include CustomHelpers

describe CustomHelpers do
  let(:summer_today) { Date.new(2016, 6, 3) }
  let(:winter_today) { Date.new(2016, 11, 12) }

  describe "#date_of_next_market" do
    context "when the date passed in is in the summer" do
      it "outputs a datetime object representing the next sunday" do

        expect(date_of_next_market(summer_today)).to eq(Date.new(2016, 6, 5))
      end
    end

    context "when the date passed in is in the winter" do
      it "returns the date of the next third sunday of the month" do

        expect(date_of_next_market(winter_today)).to eq(Date.new(2016, 11, 20))
      end
    end
  end

  describe "#market_location" do
    context "when the date in question is in the summer" do
      it "outputs the summer location" do

      end
    end
  end
end
