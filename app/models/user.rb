# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :appliances
  has_many :tools
  has_many :examples # for references
end
