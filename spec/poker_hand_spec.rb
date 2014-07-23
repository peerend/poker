require('rspec')
require('poker_hand')

describe('poker_hand') do
  it("returns two of a kind when there are two identically valued cards") do
  poker_hand(['2C','2H','4C','5S','8D']).should(eq("Two of a kind"))
  end
end
