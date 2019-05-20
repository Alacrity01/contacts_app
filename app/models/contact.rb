class Contact < ApplicationRecord
  validates :first_name, presence: true

  validates :last_name, presence: true

  validates :email, uniqueness: true
  #validates :email, format: {with: /\A\w+[@]{3,}[.]w{2,}\z/, message: "must be a valid email"}

  belongs_to :user

  has_many :contact_groups
  has_many :groups, through: :contact_groups

  def friendly_updated_at
    updated_at.strftime("%b %e,%l:%M%p")
  end

  def full_name
    if middle_name == nil
      "#{first_name} #{last_name}"
    else
      "#{first_name} #{middle_name} #{last_name}"
    end
  end

  def japan_phone_number
    "+81 #{phone_number}"
  end
end
