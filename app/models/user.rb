# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :characters
  validates_length_of :characters, maximum: 1
end
