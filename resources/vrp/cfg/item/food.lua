-- define some basic inventory items

local items = {}

local function play_eat(player)
  local seq = {
    {"mp_player_inteat@burger", "mp_player_int_eat_burger_enter",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_burger",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_exit_burger",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local function play_drink(player)
  local seq = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

-- DRINKS --
-- create Water item
local water_choices = {}
water_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"water",1) then
      vRP.varyThirst(user_id,-25)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Drinking Water",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["water"] = {"Water bottle","",water_choices,0.5}

-- create Milk item
local milk_choices = {}
milk_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"milk",1) then
      vRP.varyThirst(user_id,-20)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Drinking Milk",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["milk"] = {"Milk","",milk_choices,0.3}

-- create Coffee item
local coffee_choices = {}
coffee_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"coffee",1) then
      vRP.varyThirst(user_id,-10)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Drinking Coffee",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["coffee"] = {"Coffee","",coffee_choices,0.2}

-- create Tea item
local tea_choices = {}
tea_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"tea",1) then
      vRP.varyThirst(user_id,-15)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Drinking Tea",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["tea"] = {"Tea","",tea_choices,0.2}

-- create Iced Tea item
local icedtea_choices = {}
icedtea_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"icedtea",1) then
      vRP.varyThirst(user_id,-20)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Drinking Iced Tea",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["icedtea"] = {"Iced Tea","",icedtea_choices,0.5}

-- create Orange Juice item
local orangejuice_choices = {}
orangejuice_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"orangejuice",1) then
      vRP.varyThirst(user_id,-25)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Drinking Orange Juice",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["orangejuice"] = {"Orange Juice.","",orangejuice_choices,0.5}

-- create Goca Gola item
local gocagola_choices = {}
gocagola_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"gocagola",1) then
      vRP.varyThirst(user_id,-35)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Drinking Goca Gola",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["gocagola"] = {"Goca Gola","",gocagola_choices,0.3}

-- create RedGull item
local redgull_choices = {}
redgull_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"redgull",1) then
      vRP.varyThirst(user_id,-40)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Drinking RedGull",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["redgull"] = {"RedGull","",redgull_choices,0.3}

-- create Lemonade item
local lemonade_choices = {}
lemonade_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"lemonade",1) then
      vRP.varyThirst(user_id,-45)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Drinking Lemonade",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["lemonade"] = {"Lemonade","",lemonade_choices,0.3}

-- create Vodka item
local vodka_choices = {}
vodka_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"vodka",1) then
      vRP.varyThirst(user_id,-65)
      vRP.varyHunger(user_id, 15)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Drinking Vodka",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      vRPclient.playScreenEffect(player,{"DrugsDrivingIn",3*60})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["vodka"] = {"Vodka","",vodka_choices,0.5}

-- create Whiskey item
local whiskey_choices = {}
whiskey_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"whiskey",1) then
      vRP.varyThirst(user_id,-65)
      vRP.varyHunger(user_id, 15)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Drinking Whiskey",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      vRPclient.playScreenEffect(player,{"DrugsDrivingIn",3*60})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["whiskey"] = {"Whiskey","",whiskey_choices,0.5}

-- create JackNCoke item
local jackncoke_choices = {}
jackncoke_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"jackncoke",1) then
      vRP.varyThirst(user_id,-65)
      vRP.varyHunger(user_id, 15)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Drinking JackNCoke",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      vRPclient.playScreenEffect(player,{"DrugsDrivingIn",3*60})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["jackncoke"] = {"Jack n Coke","",jackncoke_choices,0.7}

-- create Beer item
local beer_choices = {}
beer_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"beer",1) then
      vRP.varyThirst(user_id,-65)
      vRP.varyHunger(user_id, 15)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Drinking Beer",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      vRPclient.playScreenEffect(player,{"DrugsDrivingIn",3*60})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["beer"] = {"Beer","",beer_choices,0.5}

-- create Wine item
local wine_choices = {}
wine_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"wine",1) then
      vRP.varyThirst(user_id,-65)
      vRP.varyHunger(user_id, 15)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Drinking Wine",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      vRPclient.playScreenEffect(player,{"DrugsDrivingIn",3*60})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["wine"] = {"Wine","",wine_choices,0.8}


--FOOD

-- create Bread item
local breed_choices = {}
breed_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"bread",1) then
      vRP.varyHunger(user_id,-10)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Eating Bread",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}

items["breed"] = {"Bread","",breed_choices,0.5}

-- create Corn item
local corn_choices = {}
corn_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"corn",1) then
      vRP.varyHunger(user_id,-20)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Eating Dende's Soul",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}

items["corn"] = {"Corn","",corn_choices,0.5}

-- create wings item
local wings_choices = {}
wings_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"wings",1) then
      vRP.varyHunger(user_id,-15)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Eating Wings",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}
items["wings"] = {"Wings","",wings_choices,0.5}

-- -- create Peaches item
-- local peach_choices = {}
-- peach_choices["Eat"] = {function(player,choice)
--   local user_id = vRP.getUserId(player)
--   if user_id ~= nil then
--     if vRP.tryGetInventoryItem(user_id,"peach",1) then
--       vRP.varyHunger(user_id,-25)
--           TriggerClientEvent("pNotify:SendNotification", source, {
--             text = "Eating Peach",
--             type = "info",
--             timeout = math.random(1000, 3500),
--             layout = "centerRight",
--             queue = "left"
--             })
--       play_eat(player)
--       vRP.closeMenu(player)
--     end
--   end
-- end}
-- items["peach"] = {"Peaches","",peach_choices,0.2}

-- create Donut item
local donut_choices = {}
donut_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"donut",1) then
      vRP.varyHunger(user_id,-15)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Eating Donut",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}
items["donut"] = {"Donut","",donut_choices,0.2}

-- create Tacos item
local tacos_choices = {}
tacos_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"tacos",1) then
      vRP.varyHunger(user_id,-25)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Eating Tacos",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}
items["tacos"] = {"Tacos","",tacos_choices,0.2}

-- create sandwich item
local sd_choices = {}
sd_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"sandwich",1) then
      vRP.varyHunger(user_id,-25)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Eating Sandwich",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}
items["sandwich"] = {"Sandwich","A tasty snack.",sd_choices,0.8}

-- create Kebab item
local kebab_choices = {}
kebab_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"kebab",1) then
      vRP.varyHunger(user_id,-45)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Eating Kebab",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}
items["kebab"] = {"Kebab","",kebab_choices,0.4} --

-- create Premium Donut item
local pdonut_choices = {}
pdonut_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"pdonut",1) then
      vRP.varyHunger(user_id,-25)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Eating Premium Donut",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}
items["pdonut"] = {"Premium Donut","",pdonut_choices,0.5}

-- create Pizza item
local pizza_choices = {}
pizza_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"pizza",1) then
      vRP.varyHunger(user_id,-25)
          TriggerClientEvent("pNotify:SendNotification", source, {
            text = "Eating Pizza",
            type = "info",
            timeout = math.random(1000, 3500),
            layout = "centerRight",
            queue = "left"
            })
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}
items["pizza"] = {"Pizza","",pizza_choices,0.8}


return items
