require 'spec_helper'

describe BrusselsSproutsOrder do
  describe "#initialize" do
    it "takes a number of Launchers as an argument" do
      order = BrusselsSproutsOrder.new(40)
      expect(order.launchers).to eq(40)
    end
  end

  describe "#add_bill" do
    describe "takes argument for bill amount and returns true" do

      it "returns true" do
        order = BrusselsSproutsOrder.new(40)
        expect(order.add_bill(4000)).to eq(true)
      end

      it "adds the bill to the order" do
        order = BrusselsSproutsOrder.new(40)
        order.add_bill(4000)
        expect(order.bill_amt).to eq(4000)
      end
    end
  end

  describe "#each_launcher_total_owed" do
    it "correctly divides up the total bill" do
      order = BrusselsSproutsOrder.new(40)
      order.add_bill(4000)
      expect(order.each_launcher_total_owed).to eq(100)
    end
  end
end
