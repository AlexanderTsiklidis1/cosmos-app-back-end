const db = require("../db/dbConfig.js");

const getAllPlanets = async () => {
    try {
        const allPlanets = await db.any("SELECT * FROM planets");
        return allPlanets;
    } catch (err) {
        return err;
    }
};

const getOnePlanet = async (id) => {
    try {
        const onePlanet = await db.one("SELECT * FROM planets WHERE id=$1", id);
        return onePlanet;
    } catch (error) {
        return error;
    }
};

const createPlanet = async (planet) => {
    try {
        const createdPlanet = await db.one(
            "INSERT INTO planets (planetname, description, is_current_planet, diameter_km, mass_kg, avg_temperature_celsius, planet_picture) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING *",
            [
                planet.planetname,
                planet.description,
                planet.is_current_planet,
                planet.diameter_km,
                planet.mass_kg,
                planet.avg_temperature_celsius,
                planet.planet_picture,
            ]
        );
        return createdPlanet;
    } catch (error) {
        return error;
    }
};


const deletePlanet = async (id) => {
    try {
        const deletedPlanet = await db.one(
            "DELETE from planets WHERE id = $1 RETURNING *",
            id
        );
        return deletedPlanet;
    } catch (error) {
        return error;
    }
};

const updatePlanet = async (id, planet) => {
    try {
        const {planetname, description, is_current_planet, diameter_km, mass_kg, avg_temperature_celcius, planet_picture} = planet
        const updatedPlanet = await db.one(
            "UPDATE planets SET planetname=$1, description=$2, is_current_planet=$3, diameter_km=$4, mass_kg=$5, avg_temperature_celcius=$6, planet_picture=$7 WHERE id=$8 RETURNING *"
            [planetname, description, is_current_planet, diameter_km, mass_kg, avg_temperature_celcius, planet_picture]
        );
        return updatedPlanet
    }catch(err) {
        return err
    }
}

module.exports = {
    getAllPlanets,
    getOnePlanet,
    createPlanet,
    deletePlanet,
    updatePlanet,
};
