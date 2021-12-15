const dbConfig = require('../config/dbConfig.js');

const {Sequelize, DataTypes} = require('sequelize');

const sequelize = new Sequelize(
    dbConfig.DB,
    dbConfig.USER,
    dbConfig.PASSWORD, {
        host: dbConfig.HOST,
        dialect: dbConfig.dialect,
        operatorsAliases: false,

        pool: {
            max: dbConfig.pool.max,
            min: dbConfig.pool.min,
            acquire: dbConfig.pool.acquire,
            idle: dbConfig.pool.idle

        }
    }
)

sequelize.authenticate()
.then(() => {
    console.log('connected..')
})
.catch(err => {
    console.log('Error'+ err)
})

const db = {}

db.Sequelize = Sequelize
db.sequelize = sequelize

db.event = require('./eventModel.js')(sequelize, DataTypes)
db.lineup = require('./lineupModel.js')(sequelize, DataTypes)
db.contact = require('./contactModel.js')(sequelize, DataTypes)
db.stage = require('./stageModel.js')(sequelize, DataTypes)

db.sequelize.sync({ force: false })
.then(() => {
    console.log('yes re-sync done!')
})



// 1 to Many Relation

db.event.hasMany(db.lineup, {
    foreignKey: 'event_id',
    as: 'lineup'
})

db.lineup.belongsTo(db.event, {
    foreignKey: 'event_id',
    as: 'event'
})

db.event.hasMany(db.stage, {
    foreignKey: 'event_id',
    as: 'stage'
})

db.stage.belongsTo(db.event, {
    foreignKey: 'event_id',
    as: 'event'
})

module.exports = db
