class Movie < ActiveRecord::Base
    attr_accessor :sort_by
    has_many :reviews

    def self.ransackable_attributes(auth_object = nil)
        ["actor", "country", "created_at", "description", "director", "filming_location", "id", "movie", "updated_at", "year"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["reviews"]
      end
end