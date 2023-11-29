const cors = require("cors");
const express = require("express");
const app = express();
const planets = require('./controllers/planetsController.js');

app.use(cors());
app.use(express.json());

// root
app.get("/", (req, res) => {
    response.send("Welcome to the Back-End of the Cosmos App!");
});

app.use("/planets", planets);

// 404 Page not found
app.get("*", (req, res) => {
    res.status(404).json({ error: "Page not found" });
});

module.exports = app;