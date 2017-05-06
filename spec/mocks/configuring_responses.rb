describe "Returning a value" do
  let(:item) { double("item") }
  it "呼び出す回数に応じた戻り値を設定できること" do
    allow(item).to receive(:foo).and_return(1, 2, 3)
    expect(item.foo).to eq(1)
    expect(item.foo).to eq(2)
    expect(item.foo).to eq(3)
    expect(item.foo).to eq(3)
  end
end

describe "Raising an error" do
  let(:item) { double("item") }
  it "例外を返せること" do
    allow(item).to receive(:foo).and_raise("例外発生")
    expect{ item.foo }.to raise_error("例外発生")
  end
end

describe "Calling the original implementation" do
  it { expect(Calculator.sum([1, 2, 3])).to eq(6) }

  it "expectで呼び出し確認をすると実行されなくなる" do
    expect(Calculator).to receive(:add).exactly(3)
    expect(Calculator.sum([1, 2, 3])).to eq(nil)
  end

  it "expect...and_call_original と指定すれば実行される" do
    expect(Calculator).to receive(:add).exactly(3).and_call_original
    expect(Calculator.sum([1, 2, 3])).to eq(6)
  end
end

describe "Wrapping the original implementation" do
  it "methodの挙動を変更できること" do
    expect(Calculator).to receive(:add).and_wrap_original { |m, *args| args[0] * args[1] }
    expect(Calculator.add(1, 2)).to eq(2)
  end
end
