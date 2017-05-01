class Sushi
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

describe "description取得の確認" do
  let(:sushi) {|example| Sushi.new(example.description) }
  it "甘エビ" do
    expect(sushi.name).to eq("甘エビ")
  end
  it "いくら" do
    expect(sushi.name).to eq("いくら")
  end
end
