class Libation < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :libation_name, presence: true, length: {minimum: 3}
  validates :libation_type, presence: true
  validates :image, file_size: { less_than: 2.megabytes }

  BUY_AGAIN=['Yes',  'No', 'Maybe']
  CONTAINERS=['Aluminium',  'Glass', 'Plastic', 'Steel', 'Tetra', 'Other']
  LIB_TYPES=['Drink', 'Juice', 'Soda', 'Tea', 'Dairy', 'Other']
  WEIGHTS=['ml', 'l', 'g', 'oz']

end
