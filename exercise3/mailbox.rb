=begin
Ficheiro mailbox.rb com as classes Email, Mailbox e MailboxTextFormatter para dar resposta ao
exercicio 3.
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
# Classe Mailbox com nome e emails
class Mailbox
def initialize(name, emails)
@name = name
@emails = emails
end
attr_reader :emails, :name
end
# Classe para tratar da tabela de listagem dos dados
class MailboxTextFormatter
attr_reader :mailbox
def initialize (mailbox)
@mailbox = mailbox
end	
def format
from_max = max_from_lenght(mailbox)
# puts from_max
date_max = max_date_lenght(mailbox)
# puts date_max
subject_max = max_subject_lenght(mailbox)
# puts subject_max
# Cria tabela e ao mesmo tempo insere os respectivos dados
puts "Mailbox: #{mailbox.name}"
puts
puts "+" + ("-"*date_max) + "+" + ("-"*from_max) + "+" + ("-"*subject_max) + "+"
puts "| Date" + (" "*(date_max-5)) + "| From" + (" "*(from_max-5)) + "| Subject" +
(" "*(subject_max-8)) + "|"
puts "+" + ("-"*date_max) + "+" + ("-"*from_max) + "+" + ("-"*subject_max) + "+"
mailbox.emails.each do |email|
puts "| " + email.date + (" "*(date_max - email.date.length-1)) +
"| " + email.from + (" "*(from_max - email.from.length-1)) +
"| " + email.subject + (" "*(subject_max - email.subject.length-1)) + "|"
end
puts "+" + ("-"*date_max) + "+" + ("-"*from_max) + "+" + ("-"*subject_max) + "+"
end
# Método para obter o tamanho do maior nome de from
def max_from_lenght(mailbox)
x = 0
mailbox.emails.each do |email|
if email.from.length > x
x = email.from.length
end
end
x = x+1
return x
end
# Método para obter o tamanho da maior data de date
def max_date_lenght(mailbox)
x = 0
mailbox.emails.each do |email|
if email.date.length > x
x = email.date.length
end
end
x = x+1
return x
end
# Método para obter o tamanho do maior assunto de subject
def max_subject_lenght(mailbox)
x = 0
mailbox.emails.each do |email|
if email.subject.length > x
x = email.subject.length
end
end
x = x+1
return x
end
end
emails = [
Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" }),
# Verificar se a tabela realmente se adapta => OK
Email.new("Re: Homework this week TEST TEST TEST TEST TEST", { :date => "2014-12-12", :from => "Ariane TEST TEST TEST TEST" }),
Email.new("Re: Homework this week TEST TEST TEST", { :date => "2014-12-02", :from => "Ariane TEST TEST TEST TEST TEST TEST TEST TEST" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxTextFormatter.new(mailbox)
puts formatter.format