class User < ApplicationRecord
    enum user_type: {designer: 0, printer: 1}
    has_many :listings
end
