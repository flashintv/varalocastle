
function start (song)
    print("Modchart Set")
    
end

function update (elapsed)
    local currentBeat = (songPos / 1000)*(bpm/60)
    if currentBeat >= 272 and currentBeat <= 400 then
	    for i=0,7 do
		    setActorX(_G['defaultStrum'..i..'X'] + 8 * math.sin((currentBeat + i*0.25) * math.pi), i)
	    end
    end
    if currentBeat >= 401 then
	    for i=0,7 do
		    setActorX(_G['defaultStrum'..i..'X'], i)
	    end
    end 
end

function beatHit (beat)

end

function stepHit (beat)

end

function keyPressed (key)

end