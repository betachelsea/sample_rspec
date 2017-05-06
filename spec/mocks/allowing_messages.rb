describe "Allowing messages" do
  let(:cat) { Cat.new }
  it "戻り値を設定できること(1項目)" do
    allow(cat).to receive(:name).and_return("ミケ")
    expect(cat.name).to eq("ミケ")
  end
  it "戻り値を設定できること(複数項目)" do
    allow(cat).to receive_messages(name: "タマ", age: 1)
    expect(cat.name).to eq("タマ")
    expect(cat.age).to eq(1)
    expect(cat.meow).to eq("にゃー")
  end
end
