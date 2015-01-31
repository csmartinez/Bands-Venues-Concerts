require("spec_helper")

describe(Concert) do
  it { should belong_to(:venue) }
end

describe(Concert) do
  it("converts the band name to uppercase") do
    band = Concert.create({:bandname => "aerosmith"})
    expect(band.bandname()).to(eq("AEROSMITH"))
  end
end
