const express = require("express");
const app = express();

app.use(express.static("public"));

app.set("views", "./views");
app.set("view engine", "ejs");

const dataFiles = require("./dataFiles.json");
const categories = require("./categories.json");

app.locals.dataFile = dataFiles;
app.locals.categories = categories;

app.use(express.urlencoded({extended: true}))

const routeAccueil = require("./routes/accueilRoutes");
app.use('/', routeAccueil);

const routeCategories = require("./routes/categoriesRoutes");
app.use('/', routeCategories);

//Journalisation : 
app.use((req, res, next) => {
  const timestamp = new Date().toISOString();
  const clientIP = req.ip; 
  const requestedPath = req.path; 
  // console.log(`[${timestamp}] - Client IP: ${clientIP} - Requested Path: ${requestedPath}`);
  next(); 
});

app.use((req, res) => {
  res.status(404).render("notFound");
})

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Listening at http://localhost:${PORT}`);
});
