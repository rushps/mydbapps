class Mongodbapp
  include Mongoid::Document
  field :people, type: String
  field :keyw, type: String
end
