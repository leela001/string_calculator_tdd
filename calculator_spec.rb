require 'rspec'
require_relative 'calculator'

RSpec.describe Calculator do
    describe 'test add' do
        let(:calc) { Calculator.new }
        it 'test when the input contains string with comma(,) separation' do
            res = calc.add("5,10,15")
            expect(res).to eq(30)
        end

        it 'test when the input is an empty string and retrun 0' do
            res = calc.add("")
            expect(res).to eq(0)
        end

        it "test when the input is single number string and retruns that number" do
            expect(calc.add("10")).to eq(10)
        end

        it "test when the input string contains \n" do
            expect(calc.add("1\n2,3")).to eq(6)
        end

        it "test when the input string contains custom delimiter" do
            expect(calc.add("//;\n10;20")).to eq(30)
        end
    end
end