class Member
    attr_accessor :name, :title, :description, :blog, :twitter, :image_path

    def initialize(h)
        h.each {|k,v| send("#{k}=",v)}
    end
end