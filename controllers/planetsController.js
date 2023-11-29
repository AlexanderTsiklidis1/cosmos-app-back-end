const express = require("express");
const {
    getAllPlanets,
    getOnePlanet,
    createPlanet,
    deletePlanet,
    updatePlanet,
} = require("../queries/planets.js");

const planets = express.Router();

planets.get("/", async (req, res) => {
    
    const allPlanets = await getAllPlanets();
    if (allPlanets[0]) {
        res.status(200)
            .json({ success: true, data: { payload: allPlanets } });
    } else {
        res.status(500)
        .json({ success: false, data: { error: "Server Error - we didn't do it!" } });
    }
});

planets.get("/:id", async (req, res) => {
   
        const { id } = req.params;
        const onePlanet = await getOnePlanet(id);
        if (onePlanet) {
            res.json(onePlanet);
        } else {
            res.status(404).json({ error: "Not found!" });
        }
});

planets.post("/", async (req, res) => {
    try {
        const createdPlanet = await createPlanet(req.body);
        res.json(createdPlanet);
    } catch (error) {
        console.error("Error creating planet:", error);
        res.status(400).json({ error: "Error creating planet" });
    }
});

planets.delete("/:id", async (req, res) => {
    try {
        const { id } = req.params;
        const deletedPlanet = await deletePlanet(id);
        if (deletedPlanet) {
            res.status(200).json({ success: true, payload: { data: deletedPlanet } });
        } else {
            res.status(404).json({ success: false, data: { error: "Planet not found" } });
        }
    } catch (error) {
        res.status(500).json({ success: false, data: { error: "Server Error - we didn't do it!" } });
    }
});

planets.put("/:id", async(req, res) => {
    const { id } = req.params;
    const updatedPlanet = await updatePlanet(id, req.body);
    if(updatedPlanet.id) {
        res.status(200).json(updatedPlanet);
    } else (
        res.status(404).json("no planet found with that id")
    )
})




module.exports = planets;
