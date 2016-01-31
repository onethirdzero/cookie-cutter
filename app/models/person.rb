class Person < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 50}
  validates :weight, presence: true
  validates :height, presence: true
  validates :color, presence: true, length: {maximum: 20}
end
