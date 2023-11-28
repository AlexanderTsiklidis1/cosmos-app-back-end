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
            "INSERT INTO planets (id, planetname, description, discovery_order, date_of_discovery, is_current_planet, diameter_km, mass_kg, avg_temperature_celsius) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING *",
            [
                planet.id,
                planet.planetname,
                planet.description,
                planet.discovery_order,
                planet.date_of_discovery,
                planet.is_current_planet,
                planet.diameter_km,
                planet.mass_kg,
                planet.avg_temperature_celsius,
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
        const {
            planetname,
            description,
            discovery_order,
            date_of_discovery,
            is_current_planet,
            diameter_km,
            mass_kg,
            avg_temperature_celsius,
        } = planet;

        const updatedPlanet = await db.one(
            "UPDATE planets SET planetname=$1, description=$2, discovery_order=$3, date_of_discovery=$4, is_current_planet=$5, diameter_km=$6, mass_kg=$7, avg_temperature_celsius=$8 WHERE id=$9 RETURNING *",
            [
                planetname,
                description,
                discovery_order,
                date_of_discovery,
                is_current_planet,
                diameter_km,
                mass_kg,
                avg_temperature_celsius,
                id,
            ]
        );
        return updatedPlanet;
    } catch (err) {
        return err;
    }
};

module.exports = {
    getAllPlanets,
    getOnePlanet,
    createPlanet,
    deletePlanet,
    updatePlanet,
};
