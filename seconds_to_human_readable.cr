require "big"

# check if we got an argument
if ARGV.empty? 
	abort "no arguments provided"
end

if ARGV.size > 1
	abort "You provided #{ARGV.size} arguments. Only 1 is needed"
end

seconds=ARGV[0]

# if the string is longer than 26 characters - bail!
if seconds.size > 26
	abort "You have provided a string greater than 26 digits. I cannot process that - bailing!"
end

# make sure that the argument is an integer
begin
	seconds.to_big_i
rescue
	abort "Sorry, \"#{seconds}\" is not an integer"
end

seconds=seconds.to_big_i

human_readable_string=""

millenium = 31536000000.to_big_i
century   = 3153600000.to_big_i
year      = 31536000.to_big_i
month     = 2678400.to_big_i
week      = 604800.to_big_i
day       = 86400.to_big_i
hour      = 3600.to_big_i
minute    = 60.to_big_i
aeon      = (year*1000000000)

while seconds >= 0
	case
	when seconds >= aeon
		aeons=(seconds/aeon).floor.to_i
		seconds=seconds-(aeon*aeons)
		human_readable_string="#{human_readable_string}#{aeons} aeons, "
	when seconds >= millenium
		millennia=(seconds/millenium).floor.to_i
		seconds=seconds-(millenium*millennia)
		human_readable_string="#{human_readable_string}#{millennia} millenia, "
	when seconds >= century
		centuries=(seconds/century).floor.to_i
		seconds=seconds-(century*centuries)
		human_readable_string="#{human_readable_string}#{centuries} centuries, "
	when seconds >= year
		years=(seconds/year).floor.to_i
		seconds=seconds-(year*years)
		human_readable_string="#{human_readable_string}#{years} years, "
	when seconds >= month
		months=(seconds/month).floor.to_i
		seconds=seconds-(month*months)
		human_readable_string="#{human_readable_string}#{months} months, "
	when seconds >= week
		weeks=(seconds/week).floor.to_i
		seconds=seconds-(week*weeks)
		human_readable_string="#{human_readable_string}#{weeks} weeks, "
	when seconds >= day
		days=(seconds/day).floor.to_i
		seconds=seconds-(day*days)
		human_readable_string="#{human_readable_string}#{days} days, "
	when seconds >= hour
		hours=(seconds/hour).floor.to_i
		seconds=seconds-(hour*hours)
		human_readable_string="#{human_readable_string}#{hours} hours, "
	when seconds >= minute
		minutes=(seconds/minute).floor.to_i
		seconds=seconds-(minute*minutes)
		human_readable_string="#{human_readable_string}#{minutes} minutes, "
	when seconds >= 0
		human_readable_string="#{human_readable_string}#{seconds} seconds"
		break
	end
end

puts human_readable_string
