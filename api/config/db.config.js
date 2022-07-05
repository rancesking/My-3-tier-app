const { Sequelize, Model, DataTypes } = require("sequelize");
const logger = require('../logger/api.logger');
const pg = require('pg');

const connect = () => {

    const hostName = "172.16.0.2";
    const userName = "test_user";
    const password = "S3cret";
    const database = "test_db";
    const dialect = "postgres";

    const sequelize = new Sequelize(database, userName, password, {
        host: hostName,
        dialect: dialect,
        operatorsAliases: false,
        pool: {
            max: 10,
            min: 0,
            acquire: 20000,
            idle: 5000
        }
    });
    /*
    console.log('process.env.PG_CONNECTION_STR ', process.env.PG_CONNECTION_STR)
    
    const sequelize = new Sequelize(process.env.PG_CONNECTION_STR, {
        dialectModule: pg
    });
    */
    const db = {};
    db.Sequelize = Sequelize;
    db.sequelize = sequelize;
    db.tasks = require("../model/task.model")(sequelize, DataTypes, Model);

    return db;

}

module.exports = {
    connect
}