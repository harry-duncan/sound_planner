require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :user_id => 1,
        :name => "Name",
        :date => "Date",
        :ticket_price => 2,
        :description => "Description"
      ),
      Event.create!(
        :user_id => 1,
        :name => "Name",
        :date => "Date",
        :ticket_price => 2,
        :description => "Description"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
