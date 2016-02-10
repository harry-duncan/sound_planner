# == Schema Information
#
# Table name: events
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  name         :string
#  date         :string
#  ticket_price :integer
#  description  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe "Events", type: :request do
  describe "GET /events" do
    it "works! (now write some real specs)" do
      get events_path
      expect(response).to have_http_status(200)
    end
  end
end
