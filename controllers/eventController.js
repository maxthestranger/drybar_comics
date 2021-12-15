const db = require('../models')


// create main Model
const Event = db.event
const Lineup = db.lineup
const Stage = db.stage

// main work

// 1. get all events

const getPrevEvents = async (req, res) => {

    let events = await Event.findAll({})
    res.status(200).json(events)

}

// 2. get previous events

const getActiveEvent = async (req, res, next) => {

    let id = req.params.id
    let event = await Event.findOne({
        include: [{
            model: Lineup,
            as: 'lineup'
        }, {
            model: Stage,
            as: 'stage'
        }],
        where: {id: id}
    })
    res.status(200).send(event)

}


// 3. create event

const addEvent = async (req, res, next) => {

    try{
        let info = {
            title: req.body.title,
            imgUrl: req.body.imgUrl,
            date: req.body.date,
            description: req.body.description,
            live: req.body.live ? req.body.live : false,
            year: req.body.year
        }

        const event = await Event.create(info)
        res.status(200).send(event)
    }catch(error){
        next(error)
    }

}

// 4. get previous events

const getEventByYear = async (req, res, next) => {

    let year = req.query.year
    let event = await Event.findAll({
        include: [{
            model: Lineup,
            as: 'lineup'
        }, {
            model: Stage,
            as: 'stage'
        }],
        where: {year: year}
    })
    res.status(200).send(event)

}


module.exports = {
    getPrevEvents,
    getActiveEvent,
    addEvent,
    getEventByYear
    
}