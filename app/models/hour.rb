class Hour < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '10時半〜16時半' },
    { id: 3, name: '16時半〜22時半' }
  ]
  
  include ActiveHash::Associations
  has_many :shifts
end
