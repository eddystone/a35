

pillars: get `:db/pillars.dat
dependencies: get `:db/dependencies.dat
parameters: get `:db/parameters.dat

system"d .surface"

tInterp: {[stv; ltv; speed; t; dcf] stv+(ltv-stv)*(1-exp(-1*speed*t%dcf))}

     
/    hl = 365 / speed
/     speed / 365 = 1 % hl 


tInterpHl: {[stv; ltv; hl; t] stv+(ltv-stv)*(1-exp(-1*t%hl))}

/ ltvSeg is the number of units of time or segments of the ltv
accInterp: {[stv; ltv; hl; t; ltvSeg]
    ltvFac: exp(-1*ltvSeg%hl);
    standardDecay: exp(-1*t%hl);
    adjDecay: (standardDecay-ltvFac)%(1-ltvFac);
    stv+(ltv-stv)*(1-adjDecay)
    }

/ given a RR convention of call vol - put vol

interimPutVol: {[stv; strr] stv - strr % 2}
interimCallVol: {[stv; strr] stv + strr % 2}

rr: {[callVol; putVol] callVol - putVol}



vols: {[] time: `timespan$(); sym: `symbol$()}

weights: {[] time: `timespan$(); sym: `symbol$()}




eventSymbols:([] eventSym: `symbol$(); description: (); usualStartTime: `time$(); usualEndTime: `time$(); defaultBaseWeight: `float$())


events:([] 
    time:                `timespan$(); 
    sym:                 `symbol$(); 
    ccy:                 `symbol$(); 
    eventDate:           `date$(); 
    startTime:           `time$(); 
    endTime:             `time$(); 
    baseWeight:          `float$();
    addOn:               `float$())

eventSubsByPair:([] 
    time:                `timespan$(); 
    sym:                 `symbol$();  / event
    pair:                `symbol$();
    eventDate:           `date$();
    weightFactor:        `float$();
    addOn:               `float$();
    subscribe:           `boolean$())

applyWeight:{[bw;wf;ao]1+(-1+bw*wf)+ao}




