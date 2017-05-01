# 普通に共有
shared_examples "共有したいテスト項目" do
  it { expect(1).to eq(1) }
end
describe "テスト" do
  it_behaves_like "共有したいテスト項目"
end

# 引数とかを活用してみる
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
  it_behaves_like "親クラス確認", Sushi, Food
  it_behaves_like "親クラス確認", Tea,   Drink
end
