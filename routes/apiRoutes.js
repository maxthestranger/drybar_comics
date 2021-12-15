// import controllers review, products
const eventController = require('../controllers/eventController')
const contactController = require('../controllers/contactController')
const lineupController = require('../controllers/lineupController')
const stageController = require('../controllers/stageController')

// router
const router = require('express').Router()


// use routers
router.get('/', (req, res, next) =>{
    res.json({
        status: 'all is well'
    })
})

router.route('/contact').get(contactController.getAllContacts).post(contactController.addContact)

router.route('/event').get(eventController.getEventByYear).post(eventController.addEvent)

router.route('/event/:id').get(eventController.getActiveEvent)

router.get('/lineup', lineupController.getAllLineups)
router.post('/lineup/:id', lineupController.addLineup)

router.get('/stage', stageController.getAllStages)
router.post('/stage/:id', stageController.addStage)


module.exports = router