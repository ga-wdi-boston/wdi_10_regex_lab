require_relative 'spec_helper'
require_relative '../main'
require_relative '../source'

describe "Regex Results" do
  let(:source_text) {$source_text}

  it "should have valid IP addresses" do
    expect(valid_ip_addresses(source_text)).to eq(["127.0.0.1", "216.239.32.0", "66.102.15.255", "203.15.20.74", "18.221.23.4", "18.238.10.38"])
  end

  it "should have valid MIT IP addresses" do
    expect(valid_mit_ip_addresses(source_text)).to eq(["18.221.23.4", "18.238.10.38"])
  end

  it "should have valid non-MIT IP addresses" do
    expect(non_mit_ip_addresses(source_text)).to eq(["127.0.0.1", "216.239.32.0", "66.102.15.255", "203.15.20.74"])
  end

  it "should have valid phone numbers" do
    expect(valid_phone_numbers(source_text)).to eq(["617-555-1212", "800-222-4700", "857-244-6579"])
  end

  it "should have valid area codes" do
    expect(area_codes(source_text)).to eq(["617", "800","857"])
  end

  it "should have email addresses" do
    expect(email_addresses(source_text)).to eq(["tbone@gmail.com", "bob@example.com","jessica@hotmail.com","heather@optimumonline.net"])
  end

  it "should have zip codes" do
    expect(zip_codes(source_text)).to eq(["02135", "10021"])
  end

  it "should have valid colors" do
    expect(hex_colors(source_text)).to eq(["ccddee", "b1dafb", "741d0d"])
  end
end
