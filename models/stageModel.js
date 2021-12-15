module.exports = (sequelize, DataTypes) => {

    return sequelize.define("stage", {
        name: {
            type: DataTypes.STRING,
            allowNull: false
        },
        imgUrl: {
            type: DataTypes.STRING,
            allowNull: false
        },
        description: {
            type: DataTypes.TEXT,
            allowNull: false
        },
    })

}