require 'rails_helper'

RSpec.describe Blurb, type: :model do
  it { should respond_to :user_id }
  it { should respond_to :content }
  it { should respond_to :private }

end
