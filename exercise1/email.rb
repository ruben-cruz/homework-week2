=begin
Exercicio 1.1
In a new file `email.rb` write a class `Email` that has a `subject`, `date`, and `from` attribute.
Make it so that these attributes can be populated through`new` and `initialize`.
By: Rúben Luís Pereira Barbosa Loureiro da Cruz n.º 8634
Email: a8634@alunos.ipca.pt IPCA EST LESI
Data: 30-03-2015
=end
# Classe que define um email - data, assunto e remetente
class Email
def initialize(subject, date, from)
# Instancia variaveis
@subject = subject
@date = date
@from = from
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
# Outra maneira de fazer
# attr_reader :subject, :date, :from
end
email = Email.new("Homework this week", "2014-12-01", "Ferdous")
puts "Date: #{email.date}"
puts "From: #{email.from}"
puts "Subject: #{email.subject}"