class Emotion < ApplicationRecord
  has_many  :fear
  has_many  :anger
  has_many  :saddness
  has_many  :joy
  has_many  :digust
  has_many  :trust
  has_many  :love
  has_many  :anticipation
  has_many  :surprise
  has_many  :confusion
  has_many  :hope
  has_many  :respect
  has_many  :envy
  has_many  :patience
  has_many  :pain
end
