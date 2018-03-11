class ChatRoom < ApplicationRecord
  include ActiveModel::Validations

  validates_uniqueness_of :roomname
  validates_length_of :password, maximum: 10, minimum: 3, too_short: 'Password length should be greater than 3',
                      too_long: 'Password length should be greater than 3'

  validate :roomname_validity, on: [:create, :new, :show]

  attr_accessor :roomname, :password

  def roomname_validity
    /\w+/.match(roomname)
  end

end
