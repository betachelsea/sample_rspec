describe "Test Doubles" do
  let(:item) { double("item", foo: 3, bar: 4) }
  it '定義methodが値を返すこと' do
    expect(item.foo).to eq(3)
    expect(item.bar).to eq(4)
  end
  it '定義されていないmethodは呼び出せないこと' do
    expect{ item.hoge }.to raise_error(/received unexpected message/)
  end
end

describe "Null object doubles" do
  let(:item) { double("item", foo: 3, bar: 4).as_null_object }
  it '定義されていないmethodはdouble自身を返すこと' do
    expect(item.hoge).to eq(item)
    expect(item.hoge.fuga.piyo).to eq(item)
  end
end
