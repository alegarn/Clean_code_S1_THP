require_relative '../lib/ingredient.rb'
require_relative '../lib/legacy_module'
require_relative '../lib/snack'
require_relative '../lib/sandwich'
require_relative '../lib/ingredient'
require_relative '../legacy_app'


########## Partie RSpec ##########
RSpec.describe LegacyCodeFromHellYouNeedToTest, crap:"Shit load of crap you were told would be 'state of the art' during the interview..." do


  describe Ingredient do

    context "add some ingredient" do
      # # Ingredient
      it 'has a name' do
        expect(Ingredient.new(name=nil)).to have_attributes(name: nil || 'gloubiboulga')
      end

      # ## Ingredient's name
      it 'is gloubiboulga' do
        expect(Ingredient.new(name='gloubiboulga')).to have_attributes(name: 'gloubiboulga')
      end

      # ## Ingredient's name
      it 'or is the given name in argument' do
        expect(Ingredient.new(name='salad')).to have_attributes(name: 'salad')
      end

    end

  end

  describe Snack do
    context "there is a Sn.ck" do
      # # Snack
      it 'is shareable returns true' do
        expect(Snack.new.shareable?).to eq(true)
      end

      it "has no '#brick' method" do
        expect(Snack.new).to_not respond_to(:brick)
      end
    end

  end


  describe Sandwich < Snack do
    before(:example) do
      Sandwich.class_variable_set(:@@count, 0)
    end
    context "make a Sandwich.new" do
      # # Sandwich
      it 'knows how many have been made so far' do
        expect(Sandwich.class_variable_defined?("@@count")).to_not eq(nil)
      end

      it 'can tell that no sanwich has been made so far' do
        expect(Sandwich.count).to be >= 0
      end

    end

  end

  context "LegacyCodeFromHellYouNeedToTest" do


    before(:example) do
      LegacyCodeFromHellYouNeedToTest.new
    end

    # ## Initialize
    it "doesn't fail when no ingredient is given", LegacyCodeFromHellYouNeedToTest.new() do
      expect(initialize).to eq(nil)
    end
  end
  context "LegacyCodeFromHellYouNeedToTest" do
    before(:example) do
      args = ['ingredient1', 'ingredient2', 'ingredient3', 'ingredient4, ingredient5', 'ingredient1', 'ingredient2', 'ingredient3', 'ingredient4, ingredient5', 'ingredient1', 'ingredient2', 'ingredient3', 'ingredient4, ingredient5', 'ingredient1', 'ingredient2', 'ingredient3', 'ingredient4, ingredient5', 'ingredient1', 'ingredient2', 'ingredient3', 'ingredient4, ingredient5', 'ingredient1', 'ingredient2', 'ingredient3', 'ingredient4, ingredient5']
    end

    it 'Raises an error when loaded with more than 14 ingredients', args = ['ingredient1', 'ingredient2', 'ingredient3', 'ingredient4, ingredient5', 'ingredient1', 'ingredient2', 'ingredient3', 'ingredient4, ingredient5', 'ingredient1', 'ingredient2', 'ingredient3', 'ingredient4, ingredient5', 'ingredient1', 'ingredient2', 'ingredient3', 'ingredient4, ingredient5', 'ingredient1', 'ingredient2', 'ingredient3', 'ingredient4, ingredient5', 'ingredient1', 'ingredient2', 'ingredient3', 'ingredient4, ingredient5'], KARADOC_IDEAL_NUMBER_OF_INGREDIENTS = 14 do
      expect{Sandwich.new(*args)}.to raise_error.with_message(/Too many ingredients/)
    end
  end

context "Normal Sandwich" do
  before(:example) do
    args = ['ham', 'cheese','ognon']
    Sandwich.new(*args)
  end
  it 'contains the given ingredients' do
    expect(Sandwich.ingredients).to eq(['ham', 'cheese','ognon'])
  end
end


# ## Ingredients
it 'has ingredients from Ingredients class'

# ## taste
it 'returns delicious'

# ## Pain point
it 'returns a string when there is at least one tomatoe'
it 'has no pain point when there is no tomatoe'

# ## shareable
it 'returns a truthy object'
it 'returns a string depending on the tomatoe situation'

# ## add ingredient
it 'does nothing when ingredient is not from class Ingredient'
it 'adds the given ingredient when ingredient is from class Ingredient'
it 'does not accepts a 14th ingredient nor more'

# ## can be eaten
it 'can be eaten'

# # LegacyCodeFromHellYouNeedToTest
it 'has two different sandwiches'

# ## 'my sandwich'
it 'has 3 ingredients'

# ## 'your sandwich'
it 'has more ingredients than my sandwich'

end
