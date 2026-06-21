import express from "express";
const router = express.Router();
import { create, findAll, findOne, update, deleteUser } from "../controllers/user.controller.js";

router.post("/", create);
router.get("/", findAll);
router.get("/:id", findOne);
router.put("/:id", update);
router.delete("/:id", deleteUser);

export default router;
