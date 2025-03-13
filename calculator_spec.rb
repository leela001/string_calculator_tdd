require 'rspec'
require_relative 'calculator'

RSpec.describe Calculator do
    describe 'test add' do
        it 'test when the input contains string with comma(,) separation' do
            calc = Calculator.new
            res = calc.add("5,10,15")
            expect(res).to eq(30)
        end
    end
end