require("spec_helper")

describe(Band) do
  it { should belong_to(:venue) }
end

describe(Band) do
  it("converts the name to uppercase") do
    band = Band.create({:bandname => "aerosmith"})
    expect(band.bandname()).to(eq("AEROSMITH"))
  end
end
