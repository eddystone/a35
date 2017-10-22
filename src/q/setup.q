

pillars: ([] time: `timespan$(); sym: `symbol$(); tenor: `symbol$(); premiumCcy: `symbol$(); deltaStyle: `symbol$();
             flyRatio: `float$(); rrRatio: `float$(); isCallMinusPut: `boolean$(); atm: `float$(); rr25: `float$();
             rr10: `float$(); tbFly25: `float$(); mktFly25: `float$(); tbFly10: `float$(); mktFly10: `float$());


dependencies: ([] time: `timespan$(); sym: `symbol$(); isDependent: `boolean$(); isSpread: `boolean$(); spreadParent: `symbol$(); longSpread: `float$(); shortSpread:`float$();
                  firstCorrelationParent: `symbol$(); sndCorrealtionParent: `symbol$(); shortCorrelation: `float$(); longCorrelation: `float$());

parameters: ([]        time:       `timespan$(); 
                       sym:        `symbol$();
                       stv:        `float$();
                       ltv:        `float$();
                       hl:         `float$();
                       boost:      `float$();
                       boosthl:    `float$();
                       rrStv:      `float$();
                       rrLtv:      `float$();
                       rrHl:       `float$();
                       rrBoost:    `float$();
                       rrBoosy:    `float$();
                       flyStv:     `float$();
                       flyLtv:     `float$();
                       flyHl:      `float$();
                       flyBoost:   `float$();
                       flyBoostHl: `float$());


`:db/pillars.dat set pillars
`:db/dependencies.dat set dependencies
`:db/parameters.dat set parameters