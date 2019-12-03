function init()
  script.setUpdateDelta(10)
end

function update(dt)
  local distanceCheck = world.entityQuery(mcontroller.position(),60)
  for key, value in pairs(distanceCheck) do
   world.sendEntityMessage(value,"applyStatusEffect","slimebioluminescence")
  end
end

function uninit()
end