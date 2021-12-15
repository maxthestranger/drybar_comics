module.exports = (sequelize, DataTypes) => {

    return sequelize.define("lineup", {
        name: {
            type: DataTypes.STRING,
            allowNull: false
        },
        imgUrl: {
            type: DataTypes.STRING,
            allowNull: false
        },
        region: {
            type: DataTypes.STRING,
            allowNull: false
        }
    })

}