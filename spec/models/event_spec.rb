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

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
