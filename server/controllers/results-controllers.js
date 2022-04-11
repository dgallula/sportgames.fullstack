import express from 'express';
// import { getAll } from '../bl/medicines-companies-bl.js';

const ResultsRouter = express.Router();

medResultsRouter.get('/Results', async (req, res) => {
    let result = await getAll()
   
    console.log('GET - Results')
    if (!result.success) {
        res.status(500).send(result)
    } else {
        res.send(result)
    }
})

export { ResultsRouter } 