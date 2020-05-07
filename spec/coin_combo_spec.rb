require('rspec')
require('pry')
require('coin_combo')

# describe('Change#number_check') do
#   it("will verify that the user has inputted a number") do
#     user1 = Change.new(50)
#     expect(user1.number_check(50)).to(eq(true))
#   end
# end

describe('Change#quarter_check') do
  it("checks how many quarters fit inside the user input") do
    my_change = Change.new(50)
    my_change.quarter_check
    expect(my_change.quarter_counter).to(eq(2))
  end
end

describe('Change#dime_check') do
  it("checks how many dimes fit inside the user input") do
    my_change2 = Change.new(50)
    my_change2.dime_check
    expect(my_change2.dime_counter).to(eq(5))
  end
end

describe('Change #quarter_check #dime_check')do
  it('checks how many dimes fit inside the user input after quarter check is run') do
    my_change3 = Change.new (60)
    my_change3.quarter_check
    my_change3.dime_check
    expect(my_change3.dime_counter).to(eq(1))
  end
end

describe('Change#nickle_check') do
  it("checks how many nickles inside the user input") do
    my_change4 = Change.new(65)
    my_change4.nickle_check
    expect(my_change4.nickle_counter).to(eq(13))
  end
end

describe('Change #quarter_check #dime_check # nickle_check') do
  it('check how many nickles fit after dimes and quarters are run') do
    my_change5 = Change.new(65)
    my_change5.quarter_check
    my_change5.dime_check
    my_change5.nickle_check
    expect(my_change5.quarter_counter).to(eq(2))
    expect(my_change5.dime_counter).to(eq(1))
    expect(my_change5.nickle_counter).to(eq(1))
  end
end

describe('Change #change_check') do
  it('runs quarter_check, dime_check, and nickle_check and assigns penny counter the amount of change leftover') do
    my_change6 = Change.new(66)
    my_change6.change_check
    expect(my_change6.quarter_counter).to(eq(2))
    expect(my_change6.dime_counter).to(eq(1))
    expect(my_change6.nickle_counter).to(eq(1))
    expect(my_change6.penny_counter).to(eq(1))
  end
end    
