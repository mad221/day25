class Event < ApplicationRecord

  validates :title, presence: true, length:{in: 5..140}
  validates :description, presence: true, length: {in: 20..1000}
  validates :start_date, presence: true
  validates :duration, presence: true , numericality: {greater_than: 0}
  validates :duration, numericality: {only_integer: true }
  validates :price, presence: true , length: {in: 1..1000}
  validates :location, presence: true


  has_many :attendances, dependent: :destroy
  has_many :users, through: :attendances
  belongs_to :user, required: true, optional: true


private



  def future_date?
 errors.add(:start_date, "la date doit etre dans le futur") unless
 start_date > Time.now

  end

  def is_multiple_of_5?
    errors.add(:duration, "la duree en minute doit etre un multiple de 5") unless
    duration%5==0
  end







end
