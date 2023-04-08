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

    def Computer.get_users
        @@users
    end

    def change_password(new_password)
        @@users[@username] = new_password
    end
end

my_computer = Computer.new('manos', 'gin010203#')
puts Computer.get_users
my_computer.change_password('1234')
puts Computer.get_users