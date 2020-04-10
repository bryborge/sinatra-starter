# frozen_string_literal: true

require_relative '../spec_helper'

describe User, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :name }
  it { should validate_uniqueness_of :email }

  # User email format validation
  it { should allow_value('foo123@gmail.com').for :email }
  it { should_not allow_value('bar&456@gmail.com').for :email }
end
