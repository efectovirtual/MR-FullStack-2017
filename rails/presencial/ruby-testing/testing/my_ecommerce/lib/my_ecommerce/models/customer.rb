module MyEcommerce
  module Models
    class Customer

  @@arrcustomer =[
    { user: "Alberto1", pass: "pass1", email: "alberto1@ev.co" },
    { user: "Alberto2", pass: "pass2", email: "alberto2@ev.co" },
    { user: "Alberto3", pass: "pass3", email: "alberto3@ev.co" },
    { user: "Alberto4", pass: "pass4", email: "alberto4@ev.co" },
    { user: "Alberto5", pass: "pass5", email: "alberto5@ev.co" }
  ]

    def self.find email    
      @@arrcustomer.find { |usuario| usuario[:email] == email }
    end

    end
  end
end