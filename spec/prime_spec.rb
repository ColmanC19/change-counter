require ('rspec')
require ('prime')

describe('#find_prime') do
  it('removes all numbers greater than 2 divisible by 2') do
    solve = Prime.new()
    expect(solve.find_prime(42)).to(eq("2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41 are the prime numbers up to 42"))
  end
end
