/obj/item/stack/caps
	name = "caps"
	desc = "It's worth 1 cap."
	singular_name = "cap"
	icon = 'icons/obj/bottlecap.dmi'
	icon_state = "1"
	amount = 1
	max_amount = 3000
	throwforce = 0
	throw_speed = 2
	throw_range = 2
	w_class = 1

/obj/item/stack/caps/update_icon()
	if(amount >= 20)
		icon_state = "20"
	else
		icon_state = "[amount]"

/obj/item/stack/caps/random
	//Used to generate a random stack of dosh
	var/min_caps = 1
	var/max_caps = 3000

/obj/item/stack/caps/random/New()
	var/obj/item/stack/caps/randy = new //makes new stack
	randy.loc = src.loc //sets stack location to randstack location
	randy.amount = rand(min_caps,max_caps)
	randy.update_icon()
	del src

/obj/item/stack/caps/random/low
	min_caps = 1
	max_caps = 150

/obj/item/stack/caps/random/med
	min_caps = 100
	max_caps = 500

/obj/item/stack/caps/random/high
	min_caps = 500
	max_caps = 1000