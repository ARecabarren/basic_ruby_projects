class Computer
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
        @@users[username] = password
        @files = {}
    end
end