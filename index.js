
const orm = require("./orm.js");

// Console log all the party_name's.
orm.select("party_name", "parties");