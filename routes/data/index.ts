import { createData, deleteData, getData, updateData } from '../../controllers/data';
import express from 'express';

const router = express.Router();

router.get('/', getData)
router.post("/create", createData)
router.patch("/update", updateData)
router.delete("/delete", deleteData)

export default router;