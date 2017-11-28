RSpec.describe Film do
  describe "Class Methods" do
    describe ".total_box_office_sales" do
      it "returns total box office sales for all films" do
        Film.create(title: "Fargo", year: 2017, box_office_sales: 3)
        Film.create(title: "Die Hard", year: 2016, box_office_sales: 4)

        expect(Film.total_box_office_sales).to eq(7)
      end
    end
  end
  describe "Class Methods" do 
    describe ".average_box_office_sales" do 
      it "returns average box office sales for all films" do 
        Film.create(title: "Fargo", year: 2017, box_office_sales: 3)
        Film.create(title: "Die Hard", year: 2016, box_office_sales: 4)
         Film.create(title: "Django", year: 2016, box_office_sales: 2)

        expect(Film.average_box_office_sales).to eq(3)
      end 
    end
  end
  describe "Validations" do
  it "is invalid without a title" do
    film = Film.new(year: 2017, box_office_sales: 2)

    expect(film).to_not be_valid
    end
  end
  describe "Validations" do 
    it "is invalid without a year" do 
      film = Film.new(title: "Django", box_office_sales: 3)

      expect(film).to_not be_valid
    end
  end
  describe "Validations" do 
    it "is invalid without box_office_sales" do 
      film = Film.new(title: "Pulp Fiction", year: 1994)

      expect(film).to_not be_valid
    end
  end 
end