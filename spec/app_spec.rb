require "spec_helper"

describe "app" do
  it "returns 202" do
    post "/"
    expect(last_response.status).to eq(202)
  end
end
