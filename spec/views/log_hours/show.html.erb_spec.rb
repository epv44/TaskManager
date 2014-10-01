require 'spec_helper'

describe "log_hours/show" do
  before(:each) do
    @log_hour = assign(:log_hour, stub_model(LogHour,
      :hours => "Hours",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hours/)
    rendered.should match(//)
  end
end
