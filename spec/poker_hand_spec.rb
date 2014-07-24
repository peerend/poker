require('rspec')
require('poker_hand')

describe('poker_hand') do
  it("returns flush with 5 cards of the same suit") do
    poker_hand(['2C','9C','4C','5C','8C']).should(eq("flush"))
  end
  it("returns royal flush with 5 cards of the same suit in order 10 to ace") do
    poker_hand(['10S','11S','12S','13S','14S']).should(eq("royal flush"))
  end
  it("returns straight with 5 cards in consecutive order") do
    poker_hand(['2S','3C','4S','5S','6H']).should(eq("straight"))
  end
  it("returns four of a kind with four identical cards") do
    poker_hand(['10S','10C','10S','10S','14S']).should(eq("four of a kind"))
  end
  it("returns full house with two and three identical cards") do
    poker_hand(['10S','10C','10S','11S','11S']).should(eq("full house"))
  end
  it("returns two of a kind with two identical cards") do
    poker_hand(['10S','10C','12S','13S','14S']).should(eq("pair"))
  end

end
