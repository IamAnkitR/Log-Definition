import "dotenv/config"
import express, { Application, Request, Response } from "express"
import dataRoutes from "./routes/data"


const createServer = (): express.Application => {
  const app: Application = express()
  // Body parsing Middleware
  app.use(express.json())
  app.use(express.urlencoded({ extended: true }))

  
  // Routes
  app.use("/data", dataRoutes)

  app.get("/", async (_req: Request, res: Response): Promise<Response> => {
    return res.status(200).send({
      success: true,
      message: "The server is running",
    })
  })
  app.get("/health", async (_req: Request, res: Response): Promise<Response> => {
    return res.status(200).send({
      success: true,
      message: "The server is running",
    })
  })

  return app
}

export default createServer