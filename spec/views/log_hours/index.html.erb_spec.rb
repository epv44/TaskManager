require 'spec_helper'

describe "log_hours/index" do
  before(:each) do
    assign(:log_hours, [
      stub_model(LogHour,
        :hours => "Hours",
        :user => nil
      ),
      stub_model(LogHour,
        :hours => "Hours",
        :user => nil
      )
    ])
  end

  it "renders a list of log_hours" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hours".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
