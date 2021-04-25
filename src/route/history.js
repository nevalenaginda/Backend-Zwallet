const express = require("express");
const Router = express.Router();

const {
  listHistory,
  listNotifications,
  listHistoryAdmin,
  insertHistory,
  updateHistory,
  detailHistory,
} = require("../controller/history");
const { authentication } = require("../helper/middleware/auth");

Router.get("/api/history/:id", authentication, listHistory)
  .get("/api/historyAdmin", listHistoryAdmin)
  .get("/api/notifications/:id", authentication, listNotifications)
  .get("/api/detailHistory/:id", detailHistory)
  .post("/api/history", authentication, insertHistory)
  .patch("/api/history/:id", authentication, updateHistory);

module.exports = Router;
