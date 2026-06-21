import express from "express";
import cors from "cors";
import sequelize from "./config/db.js";
import userRoutes from "./routes/user.routes.js";
import { mcp_init } from "./mcp/index.js";

const app = express();

app.use(cors());
app.use(express.json());

app.use("/users", userRoutes);

app.use((err, req, res, next) => {
  console.error("Unhandled error:", err);
  res.status(500).json({ error: err.message || "Internal server error" });
});

process.on("uncaughtException", (err) => {
  console.error("UNCAUGHT EXCEPTION:", err);
});

process.on("unhandledRejection", (reason) => {
  console.error("UNHANDLED REJECTION:", reason);
});

const PORT = process.env.PORT || 8001;

app.listen(PORT, async () => {
  try {
    console.log(`Server started at PORT ${PORT}`);
    await sequelize.sync({ alter: true });
    await mcp_init(app);
    console.log("Connected to DB");
  } catch (error) {
    console.error("Startup error:", error);
  }
});
