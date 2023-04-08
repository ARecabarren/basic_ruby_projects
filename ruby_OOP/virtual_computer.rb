class Computer
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
        @@users[username] = password
        @files = {}
    end

    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "#{filename} created by #{@username} at #{time}"
    end
end