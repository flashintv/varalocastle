local camZoomed = false

function start (song)
    print("Modchart Set")
    
end

function update (elapsed)
    local currentBeat = (songPos / 1000)*(bpm/60)
    if currentBeat >= 160 and currentBeat <= 224 then
        camZoomed = true
	    for i=0,7 do
		    setActorY(_G['defaultStrum'..i..'Y'] + 8 * math.cos((currentBeat + i*0.25) * math.pi), i)
	    end
    end
    if currentBeat >= 225 then
	    for i=0,7 do
		    setActorY(_G['defaultStrum'..i..'Y'], i)
	    end
        camZoomed = false
    end 
end

function beatHit (beat)
    if camZoomed then
        setCamZoom(0.81)
        setHudZoom(1.03)
    end
end

function stepHit (beat)

end

function keyPressed (key)

end