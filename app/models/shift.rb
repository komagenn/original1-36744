class Shift < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :work
  belongs_to :hour
  belongs_to :user

 
  validates :work_id, numericality: { other_than: 1, message: "を選択してください" }
  validates :hour_id, numericality: { other_than: 1, message: "を選択してください" }
  validates :sum_id, numericality: { other_than: 1, message: "を選択してください" }
  validates :holiday,presence: true
end
