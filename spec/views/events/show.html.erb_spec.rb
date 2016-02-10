require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :user_id => 1,
      :name => "Name",
      :date => "Date",
      :ticket_price => 2,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Description/)
  end
end
