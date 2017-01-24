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
