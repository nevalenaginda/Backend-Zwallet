const express = require("express");
const bodyParser = require("body-parser");
const morgan = require("morgan");
var cookieParser = require("cookie-parser");

const userRoute = require("./src/route/users");
const historyRoute = require("./src/route/history");
const transferRoute = require("./src/route/transfer");

const { PORT, URL_FRONTEND } = require("./src/helper/env");
const app = express();
const cors = require("cors");

// app.use(bodyParser.urlencoded({ extended: false }));
// app.use(bodyParser.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
const optionCors = {
  origin: URL_FRONTEND,
  credentials: true,
};
app.use(cors(optionCors));
app.use(morgan("dev"));
app.use(cookieParser());
app.use(userRoute);
app.use(historyRoute);
app.use(transferRoute);
// open route for public image
app.use("/images", express.static("./public/images"));

app.listen(PORT, () => {
  console.log(`Server running on PORT ${PORT}`);
});

//http://localhost:5001/images/default.png
