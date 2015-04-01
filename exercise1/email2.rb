=begin
Exercicio 1.2
Change your class so that the `initialize` method now takes a `subject` string, and
a `headers` hash. This is then more in line with how actual emails are stored in
the real world: the values `date` and `from` are stored on a hash, which is called
the “email headers”.
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
email = Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Ferdous" })
puts "Date: #{email.date}"
puts "From: #{email.from}"
puts "Subject: #{email.subject}"