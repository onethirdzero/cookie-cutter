class Person < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 50}
  validates :weight, presence: true
  validates :height, presence: true
  validates :color, presence: true, length: {maximum: 20}
  validate :cant_be_something
    def cant_be_something
      errors.add(:color, "Can't be black") if self.color.downcase == "black"
    end
end
