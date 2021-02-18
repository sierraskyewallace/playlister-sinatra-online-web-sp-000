<<<<<<< HEAD
module Slugifiable
    module ClassMethods
        def find_by_slug(slug)
            self.all.find {|artist| artist.slug == slug}
        end
    end

    module InstanceMethods
        def slug
            self.name.downcase.gsub(/ /, "-")
        end
    end
end
=======
<<<<<<< HEAD
=======
module Slugifiable
  module InstanceMethods
    def slug
      name = self.name.downcase.gsub(' ','-')
    end
  end

 module ClassMethods
    def self.find_by_slug(slug)
      Class.all.find do |name|
        name.slug == slug
      end
    end
  end
end 
>>>>>>> 4aa6adacfc6b456521e9fd1c2fb3d859b163804c
>>>>>>> 4e30d500761fa88f35f5b067585905d48e883d29
