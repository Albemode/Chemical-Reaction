class Drug < ApplicationRecord
  has_many  :alcohol
  has_many  :amphetamine
  has_many  :butylone
  has_many  :cocaine
  has_many  :dmt
  has_many  :ether
  has_many  :fourhomipt
  has_many  :ghb
  has_many  :ketamine
  has_many  :lsd
  has_many  :mdama
  has_many  :mescaline
  has_many  :mxe
  has_many  :nitrou
  has_many  :popper
  has_many  :psilocybin
  has_many  :thc
  has_many  :twofiveone
  has_many  :weed
end
