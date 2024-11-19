require 'rspec'
require 'valid_parentheses'

describe 'valid_parentheses' do
  before(:each) do
    @vp = ValidParentheses.new
  end
  it 'matches brackets and returns boolean for matching answers' do
    
    expect(@vp.valid?("()")).to eq(true)
    expect(@vp.valid?("[)")).to eq(false)

  end

  it 'checks strings with multiple characters' do
    expect(@vp.valid?("([{}])")).to eq(true)
    expect(@vp.valid?("([{()}])")).to eq(true)
    expect(@vp.valid?("([{(]}]}")).to eq(false)
  end

  

end
