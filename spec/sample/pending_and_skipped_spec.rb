# pending specs
describe "Pendingなテスト" do
  it "pendingです" do
    pending "まだです"
    fail
  end
  it "エラーが無いけどpending" do
    pending "エラーが無いときはpendingはFailed"
    expect(1).to eq(1) # エラーが無いpendingは不適とみなされてFAILED
  end
end

# skip specs
describe "テストをskipする" do
  it("skipします その1") { skip("skipする理由") }
  it("skipします その2", skip: "skipする理由") {}
  xit("skipします その3") { } # 一時的なskipという意味があるので理由不要
end


