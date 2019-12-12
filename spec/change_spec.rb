require('rspec')
require('change')

describe('#make_change') do
  it('should remove the decimal point and return a whold number') do
    number = Change.new()
    expect((number.make_change("2.13"))).to(eq("8 quarter, 1 dime, 0 nickle, 3 penny"))
  end
end
