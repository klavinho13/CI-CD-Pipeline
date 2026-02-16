const express = require('express');
const app = express();
const port = 3000;

// Simple API endpoint
app.get('/', (req, res) => {
  res.send('Hello from the backend!');
});

// Example API
app.get('/api/data', (req, res) => {
  res.json({ message: 'This is some sample backend data.' });
});

app.listen(port, () => {
  console.log(`Backend running on port ${port}`);
});
