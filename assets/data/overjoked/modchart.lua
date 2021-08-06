
function start (song)
    print("Modchart Set")
    
end

function update (elapsed)
    local currentBeat = (songPos / 1000)*(bpm/60)
    if currentBeat >= 96 and currentBeat <= 160 or currentBeat >= 288 and currentBeat <= 416 then
        for i=0,7 do
		    setActorX(_G['defaultStrum'..i..'X'] + 30 * math.sin((currentBeat + i*0.25) * math.pi), i)
		    setActorY(_G['defaultStrum'..i..'Y'] + 30 * math.cos((currentBeat + i*0.25) * math.pi), i)
            setActorAngle(_G['defaultStrum'..i..'X'] + 30 * math.sin((currentBeat + i*0.25) * math.pi), i)
        end
    else
        for i=0,7 do
		    setActorX(_G['defaultStrum'..i..'X'] + 5 * math.sin((currentBeat + i*0.25) * math.pi), i)
		    setActorY(_G['defaultStrum'..i..'Y'] + 5 * math.cos((currentBeat + i*0.25) * math.pi), i)
            setActorAngle(0, i)
	    end
    end
end

function beatHit (beat)
    if currentBeat >= 96 and currentBeat <= 160 then
        setCamZoom(1.00)
        setHudZoom(2.03)
    end
      if currentBeat >= 288 and currentBeat <= 416 and currentBeat % 4 == 0 then
         setCamZoom(0.70)  
         setHudZoom(1.03)
    end
end

function stepHit (beat)

end

function keyPressed (key)

end