
local cfg = {}

-- city hall position
cfg.city_hall = {1854.21, 3685.51, 34.2671}

-- cityhall blip {blipid,blipcolor}
cfg.blip = {181,4}

-- cost of a new identity
cfg.new_identity_cost = 100

-- phone format (max: 20 chars, use D for a random digit)
cfg.phone_format = "DDD-DDDD"
-- cfg.phone_format = "06DDDDDDDD" -- another example for cellphone in France


-- config the random name generation (first join identity)
-- (I know, it's a lot of names for a little feature)
-- (cf: http://names.mongabay.com/most_common_surnames.htm)
cfg.random_first_names = {
  "Sem",
  "Sem"
}

cfg.random_last_names = {
  "Identidade",
  "Identidade"
}

return cfg
