class Libation < ApplicationRecord
  belongs_to :user
  mount_uploader :filename, ImageUploader

  BUY_AGAIN=['Yes',  'No', 'Maybe']
  CONTAINERS=['Aluminium',  'Glass', 'Plastic', 'Steel', 'Tetra', 'Other']
  LIB_TYPES=['Drink', 'Juice', 'Soda', 'Tea', 'Dairy', 'Other']
  WEIGHTS=['ml', 'l', 'g', 'oz']

end
