var mysql = require('mysql')

var util = require('util')

var conn = mysql.createConnection({
    host: process.env.MYSQLHOST,
    user: process.env.MYSQLUSER,
    password: process.env.MYSQLPASSWORD,
    database: process.env.MYSQLDATABASE,
    port: process.env.MYSQLPORT
})

conn.connect((err) => {
    if (err) {
        console.log(err)
    } else {
        console.log("MySQL Connected")
    }
})

var exe = util.promisify(conn.query).bind(conn)

module.exports = exe