class Contact < ApplicationRecord
  belongs_to :type
  has_many :phones
  has_one :address

  accepts_nested_attributes_for :phones, allow_destroy: true
  accepts_nested_attributes_for :address, update_only: true

  def as_json(options={})
    h = super(options)
    h[:birthday] = (I18n.l(self.birthday) unless self.birthday.blank?)
    h
  end
end
