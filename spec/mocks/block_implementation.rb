describe "Use a block to verify arguments" do
  it "addメソッドが引数1,2で呼び出されていることを確認" do
    allow(Calculator).to receive(:add) do |x, y|
      expect(x).to eq(1)
      expect(y).to eq(2)
    end
    Calculator.add(1, 2)
  end
end
