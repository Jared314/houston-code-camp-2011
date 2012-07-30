class NewsItem
    attr_accessor :date, :body

    def initialize(h)
        h.each {|k,v| send("#{k}=",v)}
    end
end