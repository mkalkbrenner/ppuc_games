function ppuc.onSwitchChanged(number, state)
  if not ppuc.attractMode() then
    if (number == 43 and state == 1 and ppuc.lampState(21)) or (number == 46 and state == 1 and ppuc.lampState(22)) then
      ppuc.serumScene(60017)
    end
    if (number == 18 and state == 1) or (number == 19 and state == 1) or (number == 20 and state == 1) then
      ppuc.effectTrigger("jet", 1)
      ppuc.effectTrigger("jet-shaker", 1)
    end
    if number == 27 and state == 1 then
      ppuc.effectTrigger("eject-hole", 1)
    end
    if number == 17 and state == 1 and ppuc.onlyOnceEvery("spinner effect", 2000) then
      ppuc.effectTrigger("spinner", 1)
    end
    if (number == 12 and state == 1) or (number == 13 and state == 1) or (number == 14 and state == 1) or (number == 15 and state == 1) then
      ppuc.effectTrigger("top-rollover", 1)
    end
  end
end
