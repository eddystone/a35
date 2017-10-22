\d .webComms

/ only evaluates functions or strings
/ ws.send(serialize(["funcName", param1, param2]))
/ ws.send(serialize("funcName[param1;param2]"))
.z.ws:{value -9!x}


upd: {[t; r] t upsert r}