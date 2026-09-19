function ppuc.onLampChanged(number, state)
  if number == 5 and state == 1 and ppuc.attractMode() and ppuc.onlyOnceEvery("flash attract dmd", 20000) then
    ppuc.serumScene(60008)
  end

  if not ppuc.attractMode() then
    if number == 35 and state == 1 then
      ppuc.after(3000, function()
        ppuc.speech("Get the extra ball!")
      end)
    end
    if number == 16 and state == 1 then
      ppuc.serumScene(60007)
      ppuc.after(3000, function()
        ppuc.speech("Extra ball!")
      end)
      ppuc.effectTrigger("extra-ball", 1)
      if ppuc.onlyOnceEvery("extra ball shaker effect", 4000) then
        ppuc.effectTrigger("extra-ball-shaker", 1)
      end
    end
    if number == 14 and state == 1 then
      ppuc.after(100, function()
        ppuc.serumScene(60005)
      end)
      ppuc.after(3000, function()
        ppuc.speech("Double bonus activated!")
      end)
    end
    if number == 15 and state == 1 then
      ppuc.serumScene(60006)
      ppuc.after(3000, function()
        ppuc.speech("Tripple bonus activated!")
      end)
    end
    if number == 17 and state == 1 then ppuc.serumScene(60012) end
    if number == 18 and state == 1 then ppuc.serumScene(60013) end
    if number == 19 and state == 1 then ppuc.serumScene(60014) end
    if number == 20 and state == 1 then ppuc.serumScene(60015) end
    if number == 61 and state == 1 then ppuc.serumScene(60018) end
  end
end
