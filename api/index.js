const express = require("express");
const cors = require("cors");
const db = require("./db");

const app = express();

//middleware
app.use(cors());
app.use(express.json());

require("./routes")(app);

app.listen(3000, () => {
  console.log("Server has started on PORT 3000");
});
