import express from 'express';
// import { getAll } from '../bl/medicines-companies-bl.js';

const commentsRouter = express.Router();

medResultsRouter.get('/comments', async (req, res) => {
    let result = await getAll()
   
    console.log('GET - comments')
    if (!result.success) {
        res.status(500).send(result)
    } else {
        res.send(result)
    }
})

export { commentsRouter } 