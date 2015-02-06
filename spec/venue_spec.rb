require("spec_helper")

describe(Venue) do
  it { should have_many(:bands).through(:concerts) }

  it("validates presence of the venue's name") do
    venue = Venue.new({:venuename => ""})
    expect(venue.save()).to(eq(false))
  end

  it("ensures the length of the venue is at most 50 characters") do
    venue = Venue.new({:venuename => "a".*(51)})
    expect(venue.save()).to(eq(false))
  end
end
