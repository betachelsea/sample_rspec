class Food; end
class Sushi < Food; end
class Drink; end
class Tea < Drink; end

shared_examples "親クラス確認" do |child, parent|
  it "#{child}の親クラスは#{parent}である" do
    expect(child.superclass).to eq(parent)
  end
end

describe "それぞれの親クラスを確認" do
  include_examples "親クラス確認", Sushi, Food
  include_examples "親クラス確認", Tea,   Drink
end
