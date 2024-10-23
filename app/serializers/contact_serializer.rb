class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthday
  belongs_to :type do 
    link(:related) { type_url(object.id) }
  end

  has_many :phones
  has_one :address

  def attributes(*args)
    h = super(*args)
    h[:birthday] = object.birthday.to_time.iso8601 unless object.birthday.blank?
    h
  end
end
