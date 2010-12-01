#Gebruik haakjes bij functie definities en calls, behalve als ze leeg zijn
def rewrite(arg1, arg2)
Object.rewrite("holder", "Holder")
redirect_to post_path(:query => 'test')

# Dit hoeft niet bij alles
redirect_to post_path
render :action => :post

# Zet spaties achter operators, commas, dubbele punten, puntcommas en haakjes
1 + 3
array = [1, 2]
proc { |args| upcase }
def method(x, a = 3, b = nil)

# Maar niet hier
hash = {:a, :b}
"#{object.to_i}"

# Geen spaties achter ([ en voor ])
method(arg)
hash[key]

# Probeer je code binnen 80 karakters te houden, dit verbeterd leesbaarheid
# (doordat je alles in 1x kan lezen) en maakt je code bruikbaarder met `diff` en
# `ack`, plus de Vim gebruikers zullen er erg dankbaar voor zijn.

# Als een lange functie call of variabelen er voor kunnen zorgen dat je een te
# lange lijn krijgt kan je een van de volgende situaties gebruiken.

a_very_long_method_name(argument1,
                        a + b, arg_3)

a_very_long_method_name(argument1,
                        a + b,
                        arg_3)

# Gebruik een newline voor de return value van een method (behalve als het maar
# 1 lijn heeft). Gebruik 1 newline tussen bijvoorbeeld def blocks maar zorg
# ervoor dat er geen onnodige newlines in je code voorkomen

def instance_method(arg)
  arg.upcase
end

def instance_method2(arg1, arg2)
  arg3 = arg1 * arg2
  update_attribute(status, "completed")

  arg3
end

# Indent `when` net zo diep als `case`

case var
when 'test'
  "mark"
when 'test2'
  "Mark2"
end

# Als de when clausule erg simpel is kan het ook nog op 1 lijn

case thing
when 1 then do_one_thing
when 2 then do_two_things
end

# Gebruik `&&` en `||` ipv `and` en `or`
#
# and en or zijn control flow operators, geen boolean operators
# [bron](http://avdi.org/devblog/2010/08/02/using-and-and-or-in-ruby/)
foo = 42 && foo / 2
NoMethodError: undefined method `/` for nil:NilClass

foo = 42 and foo / 2 => 21

# Meerdere lijnen hoeven niet uit te lijnen, dit scheelt aanpaswerk en maakt
  # diffs duidelijker als er iets veranderd is

def doe_dit
  {
    :a => 1,
    :very_long_hash_key => 2,
    :medium => 3
  }
end

def en_niet_dit
  {
    :a                  => 1,
    :very_long_hash_key => 2,
    :medium             => 3
  }
end

# Je kan attributen ook als query gebruiken

if idea.title?

# ipv

if !idea.title.blank?

# Gebruik van de return value van = is prima

if user = User.find(1)
  user.destroy
else
  redirect_to root_path
end

# gebruik geen return als het niet nodig is (alleen nodig als je bijvoorbeeld
# voortijdig uit een method wilt)

# Gebruik ? om sql injection tegen te gaan

Project.where("alias = ?", params[:alias])

