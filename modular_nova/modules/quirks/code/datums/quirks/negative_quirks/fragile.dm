/datum/quirk/fragile
	name = "Fragility"
	desc = "You feel incredibly fragile. Burns and bruises hurt you more than the average person!"
	value = -6
	medical_record_text = "Patient's body has adapted to low gravity. Sadly low-gravity environments are not conducive to strong bone development."
	icon = FA_ICON_TIRED

/datum/quirk/fragile/post_add()
	. = ..()
	var/mob/living/carbon/human/user = quirk_holder
	user.physiology.brute_mod *= 1.25
	user.physiology.burn_mod *= 1.2

/datum/quirk/fragile/remove()
	. = ..()
	var/mob/living/carbon/human/user = quirk_holder
	user.physiology.brute_mod /= 1.25
	user.physiology.burn_mod /= 1.2
