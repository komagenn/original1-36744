class Sum < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '54時間未満' },
    { id: 3, name: '60時間' },
    { id: 4, name: '66時間' },
    { id: 5, name: '72時間' },
    { id: 6, name: '78時間' },
    { id: 7, name: '84時間' },
    { id: 8, name: '90時間' },
    { id: 9, name: '96時間' },
    { id: 10, name: '102時間' },
    { id: 11, name: '108時間' },
    { id: 12, name: '114時間' },
    { id: 13, name: '120時間' }
  ]
  
  include ActiveHash::Associations
  has_many :shifts
end