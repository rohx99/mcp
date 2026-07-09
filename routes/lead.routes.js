import express from "express";
import multer from "multer";
import path from "path";
import { fileURLToPath } from "url";
import { create, findAll, findOne, update, deleteLead, importLeadsFromSheet } from "../controllers/lead.controller.js";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const storage = multer.diskStorage({
  destination: (req, file, cb) => cb(null, path.join(__dirname, "..", "uploads")),
  filename: (req, file, cb) => cb(null, `${Date.now()}-${file.originalname}`),
});

const upload = multer({ storage });

const router = express.Router();

router.post("/import", upload.single("file"), importLeadsFromSheet);
router.post("/", create);
router.get("/", findAll);
router.get("/:id", findOne);
router.put("/:id", update);
router.delete("/:id", deleteLead);

export default router;
