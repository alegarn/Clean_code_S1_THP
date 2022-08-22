require_relative '../lib/ingredient.rb'

RSpec.context Ingredient do
  # # Ingredient
  it 'has a name' do
    expect(initialize('salad')).to eq(nil)
  end

end
