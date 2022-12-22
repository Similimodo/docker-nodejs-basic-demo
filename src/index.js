const app = require('express')();

app.get('/', (req, res ) => 
    res.json({ message: 'Learning Docker is easy 🐳' }) 
);

const port = process.env.PORT || 8080;

app.listen(port, () => console.log(`my app is listening on http://localhost:${port}`) );