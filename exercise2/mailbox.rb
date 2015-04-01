=begin
Exercicio 2
In a new file `mailbox.rb` write a class that has a `name` and `emails`
attribute. Make it so that the these attributes can be populated through the
`initialize` method (`name` being a string, and `emails` being an array of
`Email` instances).
By: Rúben Luís Pereira Barbosa Loureiro da Cruz n.º 8634
Email: a8634@alunos.ipca.pt IPCA EST LESI
Data: 30-03-2015
=end
# Classe que define um email - data, assunto e remetente
class Email
# Método para inicializar a classe Email
def initialize(subject, hash={})
@subject = subject
@date = hash[:date]
@from = hash[:from]
end
# Get/Set para assunto do email
def subject
@subject
end
def subject=(subject)
@subject = subject
end
# Get/Set para data do email
def date
@date
end
def date=(value)
@date = value
end
# Get/Set para remetente do email
def from
@from
end
def from=(value)
@from = value
end
end
# Classe Mailbox com nomes e emails
class Mailbox
def initialize(name, emails)
@name = name
@emails = emails
end
attr_reader :emails, :name
end
emails = [
Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)
#puts mailbox.inspect
mailbox.emails.each do |email|
puts "Date: #{email.date}"
puts "From: #{email.from}"
puts "Subject: #{email.subject}"
puts
end