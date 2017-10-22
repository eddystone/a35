system "l src/q/surface.q"
system "l src/q/sundries.q"
system "l src/q/webComms.q"

.h.HOME: "html"

testTable: ([] a: `symbol$(); b:`float$());
`testTable upsert (`a; 1.0);

