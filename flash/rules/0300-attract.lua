function ppuc.onRulesUpdate()
  if ppuc.attractMode() and ppuc.onlyOnceEvery("attract sparkle effect", 60000) then
    ppuc.effectTrigger("attract-sparkle", 1)
  end
end
