# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :audios
  has_many :examples
end
