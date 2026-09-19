function ppuc.onCoilChanged(number, state)
  if number == 1 and state == 0 and not ppuc.attractMode() then
    if ppuc.currentPlayer() == 1 and ppuc.currentBall() == 1 and not ppuc.stateActive("player 1 ball 1 served") then
      ppuc.setState("player 1 ball 1 served", 60000)
    end
    if ppuc.currentPlayer() == 1 and ppuc.currentBall() == 2 and not ppuc.stateActive("player 1 ball 2 served") then
      ppuc.setState("player 1 ball 2 served", 60000)
    end
    if ppuc.currentPlayer() == 1 and ppuc.currentBall() == 3 and not ppuc.stateActive("player 1 ball 3 served") then
      ppuc.setState("player 1 ball 3 served", 60000)
    end
    if ppuc.currentPlayer() == 2 and ppuc.currentBall() == 1 and not ppuc.stateActive("player 2 ball 1 served") then
      ppuc.setState("player 2 ball 1 served", 60000)
    end
    if ppuc.currentPlayer() == 2 and ppuc.currentBall() == 2 and not ppuc.stateActive("player 2 ball 2 served") then
      ppuc.setState("player 2 ball 2 served", 60000)
    end
    if ppuc.currentPlayer() == 2 and ppuc.currentBall() == 3 and not ppuc.stateActive("player 2 ball 3 served") then
      ppuc.setState("player 2 ball 3 served", 60000)
    end
    if ppuc.currentPlayer() == 3 and ppuc.currentBall() == 1 and not ppuc.stateActive("player 3 ball 1 served") then
      ppuc.setState("player 3 ball 1 served", 60000)
    end
    if ppuc.currentPlayer() == 3 and ppuc.currentBall() == 2 and not ppuc.stateActive("player 3 ball 2 served") then
      ppuc.setState("player 3 ball 2 served", 60000)
    end
    if ppuc.currentPlayer() == 3 and ppuc.currentBall() == 3 and not ppuc.stateActive("player 3 ball 3 served") then
      ppuc.setState("player 3 ball 3 served", 60000)
    end
    if ppuc.currentPlayer() == 4 and ppuc.currentBall() == 1 and not ppuc.stateActive("player 4 ball 1 served") then
      ppuc.setState("player 4 ball 1 served", 60000)
    end
    if ppuc.currentPlayer() == 4 and ppuc.currentBall() == 2 and not ppuc.stateActive("player 4 ball 2 served") then
      ppuc.setState("player 4 ball 2 served", 60000)
    end
    if ppuc.currentPlayer() == 4 and ppuc.currentBall() == 3 and not ppuc.stateActive("player 4 ball 3 served") then
      ppuc.setState("player 4 ball 3 served", 60000)
    end
    if ppuc.currentPlayer() == 1 and ppuc.onlyOnceEvery("player 1 speech", 3000) then
      ppuc.speech("Player one.")
    end
    if ppuc.currentPlayer() == 2 and ppuc.onlyOnceEvery("player 2 speech", 3000) then
      ppuc.speech("Player two.")
    end
    if ppuc.currentPlayer() == 3 and ppuc.onlyOnceEvery("player 3 speech", 3000) then
      ppuc.speech("Player three.")
    end
    if ppuc.currentPlayer() == 4 and ppuc.onlyOnceEvery("player 4 speech", 3000) then
      ppuc.speech("Player four.")
    end
    if ppuc.lampState(16) then
      ppuc.serumScene(60016)
      ppuc.speech("Shoot again!")
    end
  end

  if number == 1 and state == 1 and not ppuc.lampState(16) and not ppuc.attractMode() then
    if ppuc.currentBall() == 1 and ((ppuc.currentPlayer() == 1 and ppuc.stateActive("player 1 ball 1 served")) or (ppuc.currentPlayer() == 2 and ppuc.stateActive("player 2 ball 1 served")) or (ppuc.currentPlayer() == 3 and ppuc.stateActive("player 3 ball 1 served")) or (ppuc.currentPlayer() == 4 and ppuc.stateActive("player 4 ball 1 served"))) then
      ppuc.serumScene(60004)
    end
    if ppuc.currentBall() == 2 and ((ppuc.currentPlayer() == 1 and ppuc.stateActive("player 1 ball 2 served")) or (ppuc.currentPlayer() == 2 and ppuc.stateActive("player 2 ball 2 served")) or (ppuc.currentPlayer() == 3 and ppuc.stateActive("player 3 ball 2 served")) or (ppuc.currentPlayer() == 4 and ppuc.stateActive("player 4 ball 2 served"))) then
      ppuc.serumScene(60004)
    end
    if ppuc.currentBall() == 3 and ((ppuc.currentPlayer() == 1 and ppuc.stateActive("player 1 ball 3 served")) or (ppuc.currentPlayer() == 2 and ppuc.stateActive("player 2 ball 3 served")) or (ppuc.currentPlayer() == 3 and ppuc.stateActive("player 3 ball 3 served")) or (ppuc.currentPlayer() == 4 and ppuc.stateActive("player 4 ball 3 served"))) then
      ppuc.serumScene(60004)
    end
    if ppuc.currentBall() == 1 and not ((ppuc.currentPlayer() == 1 and ppuc.stateActive("player 1 ball 1 served")) or (ppuc.currentPlayer() == 2 and ppuc.stateActive("player 2 ball 1 served")) or (ppuc.currentPlayer() == 3 and ppuc.stateActive("player 3 ball 1 served")) or (ppuc.currentPlayer() == 4 and ppuc.stateActive("player 4 ball 1 served"))) then
      ppuc.serumScene(60001)
    end
    if ppuc.currentBall() == 2 and not ((ppuc.currentPlayer() == 1 and ppuc.stateActive("player 1 ball 2 served")) or (ppuc.currentPlayer() == 2 and ppuc.stateActive("player 2 ball 2 served")) or (ppuc.currentPlayer() == 3 and ppuc.stateActive("player 3 ball 2 served")) or (ppuc.currentPlayer() == 4 and ppuc.stateActive("player 4 ball 2 served"))) then
      ppuc.serumScene(60002)
    end
    if ppuc.currentBall() == 3 and not ((ppuc.currentPlayer() == 1 and ppuc.stateActive("player 1 ball 3 served")) or (ppuc.currentPlayer() == 2 and ppuc.stateActive("player 2 ball 3 served")) or (ppuc.currentPlayer() == 3 and ppuc.stateActive("player 3 ball 3 served")) or (ppuc.currentPlayer() == 4 and ppuc.stateActive("player 4 ball 3 served"))) then
      ppuc.serumScene(60003)
    end
  end

  if number == 23 and state == 0 then
    ppuc.serumScene(60009)
    ppuc.after(3000, function()
      ppuc.speech("Game over!")
    end)
  end

  if number == 6 and state == 1 and not ppuc.attractMode() then
    if ppuc.onlyOnceEvery("flash flasher effect", 4000) then
      ppuc.effectTrigger("flash-flasher", 1)
    end
    if ppuc.onlyOnceEvery("flash shaker effect", 4000) then
      ppuc.effectTrigger("flash-shaker", 1)
    end
  end
end
