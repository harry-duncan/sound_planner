require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :user_id => 1,
      :name => "MyString",
      :date => "MyString",
      :ticket_price => 1,
      :description => "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_user_id[name=?]", "event[user_id]"

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_date[name=?]", "event[date]"

      assert_select "input#event_ticket_price[name=?]", "event[ticket_price]"

      assert_select "input#event_description[name=?]", "event[description]"
    end
  end
end
