local function add_crafting_categories(entity_type, entity_name, categories)
  local entity = data.raw[entity_type][entity_name]
  for _,category in pairs(categories) do
    table.insert(entity.crafting_categories, category)
  end
end

local meld = require("meld")
            data.raw["lab"]["aop-quantum-computer"].inputs = meld(data.raw["lab"]["aop-quantum-computer"].inputs, data.raw["lab"]["biolab"].inputs)

data.raw.item["uranium-238"].weight = 10*kg
data.raw.item["aop-uranium-233"].weight = 10*kg
data.raw.item["uranium-235"].weight = 10*kg
data.raw.item["centrifuge"].weight = 200 * kg