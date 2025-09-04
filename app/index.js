const express = require("express");
const app = express();
const port = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("🚀 Hello from DevOps CI/CD Project!");
});

app.listen(3000, '0.0.0.0', () => {
  console.log("Server running on port 3000");
});

