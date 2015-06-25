RSpec.describe Garden::Scarecrow::Base, type: :aruba do
  before(:each) do
    write_file("file.txt", "such information")
    stub_const("Garden::Scarecrow::Base::MSG", "wow")
  end

  subject(:basecrow) { described_class.new(double("parsed"), "tmp/aruba/file.txt", double("config")) }

  describe "#log_violation" do
    it "logs a violation" do
      subject.log_violation(1, 1)
      expect(subject.violations).to eq(
        [
          {
            file: "tmp/aruba/file.txt",
            line: 1,
            column: 1,
            text_of_line: "such information",
            message: "wow"
          }
        ]
      )
    end
  end
end