module.exports = (sequelize, DataTypes) => {

    return sequelize.define("event", {
        title: {
            type: DataTypes.STRING,
            allowNull: false
        },
        imgUrl: {
            type: DataTypes.STRING,
            allowNull: false
        },
        date: {
            type: DataTypes.STRING
        },
        description: {
            type: DataTypes.TEXT
        },
        live: {
            type: DataTypes.BOOLEAN
        },
        year: {
            type: DataTypes.STRING,
            allowNull: false
        }
    })
}