require("spec_helper")

describe(Band) do
  it { should have_many(:venues).through(:concerts) }

  it("validates presence of the band's name") do
    band = Band.new({:bandname => ""})
    expect(band.save()).to(eq(false))
  end

  it("ensures the length of the band is at most 50 characters") do
    band = Band.new({:bandname => "a".*(51)})
    expect(band.save()).to(eq(false))
  end
end
