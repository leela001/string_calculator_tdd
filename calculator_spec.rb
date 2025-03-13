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
    end
end