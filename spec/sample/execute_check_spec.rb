
# Conditional Filters
# https://relishapp.com/rspec/rspec-core/v/3-5/docs/filtering/conditional-filters

describe "if: true の describe", if: true do
  it("if: true なので含まれる", if: true) {}
  it("if: false なので除外", if: false) {}
  it("unless: true なので除外", unless: true) {}
  it("unless: false なので含まれる", unless: false) {}
end

describe "if: false の describe", if: false do
  it("if: true なので含まれる", if: true) {}
  it("if: false なので除外", if: false) {}
  it("unless: true なので除外", unless: true) {}
  it("unless: false なので含まれる", unless: false) {}
end

# pending specs
describe "Pendingなテスト" do
  it "pendingです" do
    pending "まだです"
    fail # エラーが無いpendingは不適とみなされる
  end
  it "エラーが無いけどpending" do
    pending "エラーが無いときはpendingはFailed"
    expect(1).to eq(1)
  end
end

# skip specs
describe "テストをskipする" do
  it("skipします その1") { skip("skipする理由") }
  it("skipします その2", skip: "skipする理由") {}
  xit("skipします その3") { } # 一時的なskipとして扱われる
end


