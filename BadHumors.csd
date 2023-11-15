<Cabbage>
form caption("Bad Humors") size(450, 450), guiMode("queue") pluginId("Bhum") colour("black") bundle("./images", "BadHumors.snaps")

; Plugin title
image bounds(10, 14, 240, 27) channel("lblTitle") file("./images/badhumors-title.png")

; Name toggler & help link
image bounds (263, 20, 26, 43) channel("panelMisc") colour("black")
{
    button bounds(0, 0, 26, 16) channel("btnSight") text("") value(0) presetIgnore(1) corners(15) imgFile("off", "./images/eye-grey.svg") imgFile("on", "./images/eye-white.svg")
    infobutton bounds(8, 27, 10, 16) file("https://github.com/niflheimmer/badhumors") text("") imgFile("off", "./images/question-white.svg") imgFile("on", "./images/question-white.svg")
}

; Plugin menu controls
image bounds (10, 47, 140, 33) channel("panelMenu") colour("black")
{
    combobox bounds(0, 0, 55, 16) mode("resize") value(3) automatable(0) channel("PluginResizerCombBox")
    filebutton bounds(60, 0, 16, 16) mode("named preset") populate("*.snaps") text("") imgFile("off", "./images/save-white.svg") imgFile("on", "./images/save-white.svg")
    filebutton bounds(81, 0, 16, 16) mode("remove preset") populate("*.snaps") text("") imgFile("off", "./images/delete-white.svg") imgFile("on", "./images/delete-white.svg")
    button bounds(102, 0, 16, 16) channel("btnRandom") text("") presetIgnore(1) imgFile("off", "./images/randomize-white.svg") imgFile("on", "./images/randomize-white.svg")
    button bounds(123, 0, 16, 16) channel("btnClear") text("") presetIgnore(1) imgFile("off", "./images/clear-white.svg") imgFile("on", "./images/clear-white.svg")
    combobox bounds(0, 17, 140, 16) populate("*.snaps")
}

; Host info
image bounds (150, 47, 120, 33) channel("panelHost") colour("black")
{
    label bounds(0, 0, 120, 16) channel("lblBPM") text("0 BPM")
    label bounds(0, 17, 120, 16) channel("lblTimeSig") text("0/0")
}

; Power
image bounds(392, 13, 37, 52) channel("panelPower") colour("black")
{
    button bounds(3, 0, 30, 32) channel("btnPower") text("") value(1) presetIgnore(1) corners(15) imgFile("off", "./images/power-grey.svg") imgFile("on", "./images/power-white.svg")
    label bounds(0, 37, 37, 16) channel("lblPower") text("PWR") fontColour("white")
}

; Step length
image bounds(300, 5, 80, 76) channel("panelStepLen") colour("black")
{
    rslider bounds(0, 0, 80, 60) channel("knobStepLen") range(0, 5, 0, 1, 1) text("Step Length") trackerColour("lime")
    label bounds(0, 60, 80, 16) channel("lblStepLen") text("Whole")
}

; Grid placeholder
label bounds(25, 85, 400, 125) channel("tempGrid") text("GRID") visible(0)

; Step slider
hslider bounds(35, 210, 380, 25) channel("sliderNumSteps") range(1, 16, 16, 1, 1) trackerColour("lime")

; Blood - slicer
image bounds(20, 240, 100, 200) channel("panelFX0") colour("black") corners(13) outlineThickness(2) outlineColour("crimson")
{
    image bounds(10, 10, 16, 16) file("./images/slice-crimson.svg")
    button bounds(35, 10, 30, 30) channel("btnCut") text("") value(1) corners(15) colour:0("grey") colour:1("crimson") outlineColour("white")
    label bounds(0, 45, 100, 16) channel("lblFX0") text("Blood") fontColour("white")
    button bounds(35, 73, 30, 36) channel("btnCutRev") text("") value(0) imgFile("off", "./images/reverse-grey.svg") imgFile("on", "./images/reverse-crimson.svg")
    label bounds(0, 112, 100, 14) channel("lblCutRev") text("Reverse") fontStyle("plain")
    rslider bounds(0, 130, 100, 60) channel("knobCutSpd") range(1, 4, 2, 1, 1) text("Speed") trackerColour("crimson")
}

; Yellow Bile - bitcrusher
image bounds(123, 240, 100, 200) channel("panelFX1") colour("black") corners(13) outlineThickness(2) outlineColour("gold")
{
    image bounds(9, 10, 18, 16) file("./images/bitwave-gold.svg")
    button bounds(35, 10, 30, 30) channel("btnCrsh") text("") value(1) corners(15) colour:0("grey") colour:1("gold") outlineColour("white")
    label bounds(0, 45, 100, 16) channel("lblFX1") text("Yellow Bile") fontColour("white")
    rslider bounds(0, 65, 100, 60) channel("knobCrshAmnt") range(1, 250, 6, 0.5, 1) text("Amount") trackerColour("gold")
    rslider bounds(0, 130, 100, 60) channel("knobCrshGain") range(0, 2, 1, 1, 0.01) text("Gain") trackerColour("gold")
}

; Black Bile - distortion
image bounds(227, 240, 100, 200) channel("panelFX2") colour("black") corners(13) outlineThickness(2) outlineColour("peru")
{
    image bounds(10, 10, 16, 16) file("./images/waveshape-peru.svg")
    button bounds(35, 10, 30, 30) channel("btnDist") text("") value(1) corners(15) colour:0("grey") colour:1("peru") outlineColour("white")
    label bounds(0, 45, 100, 16) channel("lblFX2") text("Black Bile") fontColour("white")
    rslider bounds(0, 65, 100, 60) channel("knobDistAmnt") range(0, 1, 1, 1, 0.01) text("Amount") trackerColour("peru")
    rslider bounds(0, 130, 100, 60) channel("knobDistGain") range(0, 2, 1, 1, 0.01) text("Gain") trackerColour("peru")
}

; Phlegm - comb reverb
image bounds(330, 240, 100, 200) channel("panelFX3") colour("black") corners(13) outlineThickness(2) outlineColour("skyblue")
{
    image bounds(10, 10, 16, 16) file("./images/comb-skyblue.svg")
    button bounds(35, 10, 30, 30) channel("btnRev") text("") value(1) corners(15) colour:0("grey") colour:1("skyblue") outlineColour("white")
    label bounds(0, 45, 100, 16) channel("lblFX3") text("Phlegm") fontColour("white")
    rslider bounds(0, 65, 100, 60) channel("knobRevLen") range(0, 1, 0.05, 1, 0.01) text("Length") trackerColour("skyblue")
    rslider bounds(0, 130, 100, 60) channel("knobRevGain") range(0, 2, 1, 1, 0.01) text("Gain") trackerColour("skyblue")
}
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d
</CsOptions>
<CsInstruments>
nchnls = 2
0dbfs = 1

; signal splicer opcode, courtesy of Rory Walsh
opcode trackerSplice, a, akk
    asig, kseglength, kmode xin

    setksmps 1
    kindx init 0
    ksamp init 1
    aout init 0

    itbl ftgenonce 0, 0, 2^16, 7, 0, 2^16, 0
    kseglength = kseglength*sr
    andx phasor sr/ftlen(itbl)
    tabw asig, andx*ftlen(itbl), itbl
    andx1 delay andx, 1

    apos samphold andx1*ftlen(itbl), ksamp

    if(kmode>=1 && kmode <2) then
        kpos downsamp apos
        kindx = (kindx>kseglength ? 0 : kindx+1)
        if(kindx+kpos> ftlen(itbl)) then
        kindx = -kseglength
        endif
        aout table apos+kindx, itbl, 0, 1
        ksamp = 0

    elseif(kmode>=2 && kmode<3) then
        kpos downsamp apos
        kindx = ((kindx+kpos)<=0 ? ftlen(itbl)-kpos : kindx-1)
        aout table apos+kindx, itbl, 0, 1
        ksamp = 0

    else
        ksamp = 1
        aout = asig
    endif
    xout aout
endop

instr startup
    ; set grid dimensions
    iGridX = 25
    iGridY = 85
    iGridWH = 25
    iGridRad = int(iGridWH / 2 + 1)

    ; set colors
    SColors[] init 4
    SColors[0] = "crimson"
    SColors[1] = "gold"
    SColors[2] = "peru"
    SColors[3] = "skyblue"

    ; set indexes
    iX init 0
    iY init 0

    ; create step indicator lights
    while iX < 16 do
        SLight sprintf "bounds(%d, %d, %d, %d) channel(\"imgStepIndexX%d\") corners(%d) colour(\"lime\") visible(0)",
            (iGridX + iX * iGridWH), iGridY, iGridWH, iGridWH, iX, iGridRad
        cabbageCreate "image", SLight
        iX += 1
    od


    iX = 0
    ; create sequence boxes
    while iX < 16 do
        iY = 0
        while iY < 4 do
            SBtn sprintf "bounds(%d, %d, %d, %d) channel(\"btnStepX%dY%d\") text(\"\") corners(%d) colour:0(\"grey\") colour:1(\"%s\")",
                (iGridX + iX * iGridWH), (iGridY + iGridWH + iY * iGridWH), iGridWH, iGridWH, iX, iY, iGridRad, SColors[iY]
            cabbageCreate "button", SBtn
            iY += 1
        od
        iX += 1
    od
endin

instr main
    ; get host info
    gkIsPlaying cabbageGetValue "IS_PLAYING"
    gkBPM cabbageGetValue "HOST_BPM"
    gkTimeSigNum cabbageGetValue "TIME_SIG_NUM"
    gkTimeSigDenom cabbageGetValue "TIME_SIG_DENOM"

    ; get plugin info
    gkPower cabbageGetValue "btnPower"
    gkStepLen cabbageGetValue "knobStepLen"
    gkNumSteps cabbageGetValue "sliderNumSteps"
    kSight cabbageGetValue "btnSight"
    kRandom cabbageGetValue "btnRandom"
    kClear cabbageGetValue "btnClear"

    ; set triggers
    gkCutTrigger init 0
    gkCrshTrigger init 0
    gkDistTrigger init 0
    gkRevTrigger init 0

    ; set step index
    gkStepIndex init 0
    gkLastStepIndex init -1

    ; set metronome speed
    gkMetroSpeed divz (gkBPM * (2^gkStepLen)), (60 * gkTimeSigNum), 4

    ; set step lengths
    SStepLens[] init 6
    SStepLens[0] = "Whole"
    SStepLens[1] = "Half"
    SStepLens[2] = "Quarter"
    SStepLens[3] = "Eighth"
    SStepLens[4] = "16th"
    SStepLens[5] = "32nd"

    ; set button channels
    SFXBtns[] init 4
    SFXBtns[0] = "btnCut"
    SFXBtns[1] = "btnCrsh"
    SFXBtns[2] = "btnDist"
    SFXBtns[3] = "btnRev"

    ; set effect names
    SFXNames0[] init 4
    SFXNames0[0] = "Blood"
    SFXNames0[1] = "Yellow Bile"
    SFXNames0[2] = "Black Bile"
    SFXNames0[3] = "Phlegm"
    SFXNames1[] init 4
    SFXNames1[0] = "Slicer"
    SFXNames1[1] = "Bitcrusher"
    SFXNames1[2] = "Distortion"
    SFXNames1[3] = "Reverb"
    SFXNames[] init 4

    ; set step visibility
    kStepVisible init 1

    ; update BPM view
    if changed(gkBPM) == 1 then
        cabbageSet 1, "lblBPM", "text", sprintfk("%d BPM", gkBPM)
    endif

    ; update time signature view
    if changed(gkTimeSigNum) == 1 || changed(gkTimeSigDenom) == 1 then
        cabbageSet 1, "lblTimeSig", "text", sprintfk("%d/%d", gkTimeSigNum, gkTimeSigDenom)
    endif

    ; update step length text
    if changed(gkStepLen) == 1 then
        cabbageSet 1, "lblStepLen", "text", SStepLens[gkStepLen]
    endif

    ; update step button visibility
    if changed(gkNumSteps) == 1 then
        kX = 0
        ; refresh step visibility
        while kX < 16 do
            kY = 0
            kStepVisible = kX < gkNumSteps ? 1 : 0
            ; set visibility in column
            while kY < 4 do
                SStep sprintfk "btnStepX%dY%d", kX, kY
                cabbageSet 1, SStep, "visible", kStepVisible
                kY += 1
            od
            kX += 1
        od
    endif

    ; update effect name text
    if changed(kSight) == 1 then
        ; toggle name strings
        if kSight == 1 then
            SFXNames[] = SFXNames1
        else
            SFXNames[] = SFXNames0
        endif
        kX = 0
        while kX < 4 do
            cabbageSet 1, sprintfk("lblFX%d", kX), "text", SFXNames[kX]
            kX += 1
        od
    endif

    ; clear sequence
    if changed(kClear) == 1 || changed(kRandom) == 1 then
        kX = 0
        while kX < 16 do
            kY = 0
            while kY < 4 do
                cabbageSetValue sprintfk("btnStepX%dY%d", kX, kY), 0, 1
                kY += 1
            od
            kX += 1
        od
    endif

    ; generate random sequences
    if changed(kRandom) == 1 then
        kX = 0
        while kX < 16 do
            kY = 0
            while kY < 4 do
                cabbageSetValue sprintfk("btnStepX%dY%d", kX, kY), round(rnd:k(1)), 1
                kY += 1
            od
            kX += 1
        od
    endif

    ; trigger sequencer when playback starts
    if changed(gkIsPlaying) == 1 || changed(gkPower) == 1 then
        if gkIsPlaying == 1 && gkPower == 1 then
            ; start sequencer
            event "i", "sequencer", 0, 604800
        else
            ; stop sequencer
            turnoff2 "sequencer", 0, 0

            ; reset triggers
            gkCutTrigger = 0
            gkCrshTrigger = 0
            gkDistTrigger = 0
            gkRevTrigger = 0

            ; reset index
            gkStepIndex = 0
            gkLastStepIndex = -1

            kX = 0
            ; reset step indicator lights
            while kX < 16 do
                cabbageSet 1, sprintfk("imgStepIndexX%d", kX), "visible", 0
                kX += 1
            od

            kX = 0
            ; reset effect indicator lights
            while kX < 4 do
                cabbageSet 1, SFXBtns[kX], "outlineThickness", 0
                kX += 1
            od
        endif
    endif
endin

instr sequencer
    if metro(gkMetroSpeed) == 1 then
        ; switch step lights
        cabbageSet 1, sprintfk("imgStepIndexX%d", gkLastStepIndex), "visible", 0
        cabbageSet 1, sprintfk("imgStepIndexX%d", gkStepIndex), "visible", 1

        ; toggle slicer
        gkCutTrigger cabbageGetValue sprintfk("btnStepX%dY0", gkStepIndex)
        cabbageSet 1, "btnCut", "outlineThickness", 4 * gkCutTrigger

        ; toggle bitcrusher
        gkCrshTrigger cabbageGetValue sprintfk("btnStepX%dY1", gkStepIndex)
        cabbageSet 1, "btnCrsh", "outlineThickness", 4 * gkCrshTrigger

        ; toggle distortion
        gkDistTrigger cabbageGetValue sprintfk("btnStepX%dY2", gkStepIndex)
        cabbageSet 1, "btnDist", "outlineThickness", 4 * gkDistTrigger

        ; toggle comb reverb
        gkRevTrigger cabbageGetValue sprintfk("btnStepX%dY3", gkStepIndex)
        cabbageSet 1, "btnRev", "outlineThickness", 4 * gkRevTrigger

        ; increment step
        gkLastStepIndex = gkStepIndex
        gkStepIndex = gkStepIndex < gkNumSteps - 1 ? gkStepIndex + 1 : 0
    endif
endin

instr effects
    ; create waveshape
    iSigmoid ftgen 0, 0, 257, 9, .5, 1, 270

    ; get slicer values
    kCutBtn cabbageGetValue "btnCut"
    kCutRev cabbageGetValue "btnCutRev"
    kCutSpd cabbageGetValue "knobCutSpd"

    ; get bitcrusher values
    kCrshBtn cabbageGetValue "btnCrsh"
    kCrshAmnt cabbageGetValue "knobCrshAmnt"
    kCrshGain cabbageGetValue "knobCrshGain"

    ; get distortion values
    kDistBtn cabbageGetValue "btnDist"
    kDistAmnt cabbageGetValue "knobDistAmnt"
    kDistGain cabbageGetValue "knobDistGain"

    ; get comb reverb values
    kRevBtn cabbageGetValue "btnRev"
    kRevLen cabbageGetValue "knobRevLen"
    kRevGain cabbageGetValue "knobRevGain"

    ; get stereo input
    a1, a2 inch 1, 2

    if gkPower == 1 then
        ; enable slicer
        if kCutBtn == 1 && gkCutTrigger == 1 then
            ; using sndloop with hardcoded duration
            ;a1, krec1 sndloop a1, kCutPitch, 1 - metro(kCutMetro), 0.1, 0.05
            ;a2, krec2 sndloop a2, kCutPitch, 1 - metro(kCutMetro), 0.1, 0.05

            ; using Rory's code
            kCutSecs = 60 / (gkBPM * kCutSpd)
            ; make sure speed does not exceed 1 second
            kCutSecs = kCutSecs > 1 ? 1 : kCutSecs
            a1 trackerSplice a1, kCutSecs, 1 + kCutRev
            a2 trackerSplice a2, kCutSecs, 1 + kCutRev
        endif

        ; enable bitcrusher
        if kCrshBtn == 1 && gkCrshTrigger == 1 then
            a1 fold a1, kCrshAmnt
            a2 fold a2, kCrshAmnt
            a1 *= kCrshGain
            a2 *= kCrshGain
        endif

        ; enable distortion
        if kDistBtn == 1 && gkDistTrigger == 1 then
            a1 distort a1, kDistAmnt, iSigmoid
            a2 distort a2, kDistAmnt, iSigmoid
            a1 *= kDistGain
            a2 *= kDistGain
        endif

        ; enable comb reverb
        if kRevBtn == 1 && gkRevTrigger == 1 then
            a1 comb a1, gkBPM * kRevLen, 0.05
            a2 comb a2, gkBPM * kRevLen, 0.05
            a1 *= kRevGain
            a2 *= kRevGain
        endif
    endif

    ; output stereo
    outs a1, a2
endin

</CsInstruments>
<CsScore>
f 0 z
i "startup" 0 0
i "main" 0 604800
i "effects" 0 604800
</CsScore>
</CsoundSynthesizer>