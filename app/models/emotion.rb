class Emotion < ApplicationRecord
  has_many  :fears
  has_many  :angers
  has_many  :saddnesses
  has_many  :joys
  has_many  :digusts
  has_many  :trusts
  has_many  :loves
  has_many  :anticipations
  has_many  :surprises
  has_many  :confusions
  has_many  :hopes
  has_many  :respects
  has_many  :envies
  has_many  :patiences
  has_many  :pains
end
