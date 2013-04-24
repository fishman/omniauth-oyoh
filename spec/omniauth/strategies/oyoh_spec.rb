require "spec_helper"

describe OmniAuth::Strategies::Oyoh do
  subject do
    OmniAuth::Strategies::Oyoh.new({})
  end

  context "client_options" do
    it "uses the correct site" do
      subject.options.client_options.site.
        should == "https://cajuncodefest.dhh.la.gov"
    end

    it "uses the correct authorize_url" do
      subject.options.client_options.authorize_url.
        should == "https://cajuncodefest.dhh.la.gov/oauth/authenticate"
    end

    it "uses the correct token_url" do
      subject.options.client_options.token_url.
        should == "https://cajuncodefest.dhh.la.gov/oauth/access_token"
    end
  end
end
