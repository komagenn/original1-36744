class Work < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '10日未満' },
    { id: 3, name: '10日' },
    { id: 4, name: '11日' },
    { id: 5, name: '12日' },
    { id: 6, name: '13日' },
    { id: 7, name: '14日' },
    { id: 8, name: '15日' },
    { id: 9, name: '16日' },
    { id: 10, name: '17日' },
    { id: 11, name: '18日' },
    { id: 12, name: '19日' },
    { id: 13, name: '20日' }
  ]
  
  include ActiveHash::Associations
  has_many :shifts
end
