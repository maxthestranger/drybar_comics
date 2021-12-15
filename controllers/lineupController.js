const db = require('../models')

// model
const Lineup = db.lineup

// functions

//1. Add Lineup

const addLineup = async (req, res) => {

    const id = req.params.id

    let data = {
        event_id: id,
        name: req.body.name,
        imgUrl: req.body.imgUrl,
        region: req.body.region
    }

    const lineup = await Lineup.create(data)
    res.status(200).send(lineup)

}

// 2. Get All Lineups

const getAllLineups = async (req, res) => {

    const lineups = await Lineup.findAll({})
    res.status(200).send(lineups)

}

module.exports = {
    addLineup,
    getAllLineups
}