require ('rspec')
require ('allergy')

describe('allergy_score') do
  it('should return an allergy based upon their score') do
    allergy = Allergy.new()
    expect(allergy.allergy_score('128')).to(eq('cats'))
  end
end
