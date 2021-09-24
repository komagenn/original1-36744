class Hour < ActiveHash::Base
  self.data = [
    { id: 1, time: '0', name: '--' },
    { id: 2, time: '6', name: '10時半〜16時半' },
    { id: 3, time: '6', name: '16時半〜22時半' }
  ]
  
  include ActiveHash::Associations
  has_many :shifts
end
