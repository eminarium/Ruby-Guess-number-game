# Author : Merdan Durdyýew
# Github : https://github.com/eminarium
# Medium (Personal blog) : https://medium.com/@merdan.durdiyev
# Medium (Publication) : https://medium.com/kodeser
# Date : 23.09.2020

# Beýany: "San bilmek" ýony, görkezilen aralykda kompýutere bir san belledip
# ony bilmek barada düzülen oýun. Eger aýdan bahaňyz bellenen sandan ýokary ýa pes bolsa
# onda bu barada programma habar berip durýar. Mundan başga-da, programma diňe
# görkezilen synanyşyk sany gezek san aýtmaga mümkinçilik berýär.
# Şonça synanyşykda san bilinmedik ýagdaýynda programma tamamlanýar.

# Description : "Guess number" - is a simple game to guess a number given at a certain interval.
# You can only try to guess the number of times that was defined at the start of the program.
# At every try, you will be notified whether the secret number is lower or higher than the
# number input by you. If you could not guess it for a certain number of times,
# program reveals the secret number and ends.



puts "'San bilmek' oýnuna HOŞ GELDIŇIZ";
print "Özüňizi bien tanyş ediň (Adyňyz) : ";
ady = gets.chomp;
puts "Salam #{ady}!";

print "Haýsy aralykda san bilmek islärsiňiz (ýokarky çägi giriziň) : "
aralyk = gets.to_i

puts "Men 0-#{aralyk} arasynda bir san belledim. Ony biljek boluň !"
gizlin_san = rand(aralyk) + 1

print "Näçe synanyşykda bilmegi meýilleşdirýärsiňiz : "
jemi_synanyshyk = gets.to_i

synanyshyk = 0
sany_bildi = false # Gizlin sany ulanyjynyň bilip bilmändigi barada bellik


# Ulanyjy jemi rugsat berilýän synanyşyk gezek san giriziýänçä ýa-da
# gizlin sany bilýänçä, ýagny 'sany_bildi' belligi 'true' bolýança.
until synanyshyk == jemi_synanyshyk || sany_bildi == true
	galan_synanyshyk = jemi_synanyshyk - synanyshyk
	puts "#{galan_synanyshyk} synanyşygyňyz galdy !"

	synanyshyk += 1

	print "Islendik bir san giriziň : "
	islendik_san = gets.to_i

	if islendik_san < gizlin_san
		puts "Ooops. Siziň girizen sanyňyz pesräk !"
	elsif islendik_san > gizlin_san
		puts "Ooops. Siziň girizen sanyňyz beýigräk !"
	elsif islendik_san == gizlin_san
		puts "Tüweleme #{ady}!!!"
		puts "Siz jemi #{synanyshyk} synanyşykda gizlin sany bildiňiz !"
		sany_bildi = true
	end
end


# Eger ulanyjy gizlin sany bilmedik bolsa oňa gizlin sany habar berýäris
# we programmany soňlaýarys.
unless sany_bildi
	puts "Bagyşlaň. Meniň bellän sanym : #{gizlin_san}"
end