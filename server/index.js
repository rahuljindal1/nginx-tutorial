const express = require('express')
const app = express();

app.get('/', (req, res) => {
    res.send({
        message: process.env.SERVER_MESSAGE
    })
})

app.listen(7777, () => {
    console.log("Listening on PORT 7777")
})