class Sponsor
    attr_accessor :name, :url, :image_path, :level

    def initialize(h)
        h.each {|k,v| send("#{k}=",v)}
    end
end