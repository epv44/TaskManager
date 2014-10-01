require 'spec_helper'

describe "log_hours/edit" do
  before(:each) do
    @log_hour = assign(:log_hour, stub_model(LogHour,
      :hours => "MyString",
      :user => nil
    ))
  end

  it "renders the edit log_hour form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", log_hour_path(@log_hour), "post" do
      assert_select "input#log_hour_hours[name=?]", "log_hour[hours]"
      assert_select "input#log_hour_user[name=?]", "log_hour[user]"
    end
  end
end
