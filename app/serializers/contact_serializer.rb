class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthday
  belongs_to :type do 
    link(:related) { contact_type_url(object.id) }
  end

  has_many :phones do 
    link(:related) { contact_phones_url(object.id) }
  end

  has_one :address do 
    link(:related) { contact_address_url(object.id) }
  end


  def attributes(*args)
    h = super(*args)
    h[:birthday] = object.birthday.to_time.iso8601 unless object.birthday.blank?
    h
  end
end
