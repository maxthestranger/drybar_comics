const db = require('../models')

// model
const Stage = db.stage

// functions

//1. Add Stage

const addStage = async (req, res) => {

    const id = req.params.id

    let data = {
        event_id: id,
        name: req.body.name,
        imgUrl: req.body.imgUrl,
        description: req.body.description
    }

    const stage = await Stage.create(data)
    res.status(200).send(stage)

}

// 2. Get All Stages

const getAllStages = async (req, res) => {

    const stages = await Stage.findAll({})
    res.status(200).send(stages)

}

module.exports = {
    addStage,
    getAllStages
}