import { Response, Request } from "express"
import { Prisma, PrismaClient } from "@prisma/client"


const prisma = new PrismaClient()


export const createData = async (req: Request, res: Response): Promise<void | Response> => {
  const { path, definition } = req.body;
  try {
      const data = await prisma.search.create({
          data: {
              path,
              definition
          }
      });
      return res.status(200).json({ status: true, message: "Data inserted successfully", data });
  } catch (error: any) {
      if (error instanceof Prisma.PrismaClientKnownRequestError && error.code === 'P2002') {
          // Unique constraint violation occurred
          return res.status(400).json({ status: false, message: "Path already exists" });
      } else {
          console.error("Error creating data:", error);
          return res.status(500).json({ status: false, message: "Internal server error" });
      }
  }
};

export const updateData = async (req: Request, res: Response): Promise<void | Response> => {
  const { id, path, definition } = req.body;

  try {
      const updatedData = await prisma.search.update({
          where: {
              id
          },
          data: {
              path,
              definition
          }
      });

      return res.status(200).json({ status: true, message: "Data updated successfully", data: updatedData });
  } catch (error) {
      console.error("Error updating data:", error);
      return res.status(500).json({ status: false, message: "Internal server error" });
  }
};

export const deleteData = async (req: Request, res: Response): Promise<void | Response> => {
  const { id } = req.body;

  try {
      await prisma.search.delete({
          where: {
              id
          }
      });

      return res.status(200).json({ status: true, message: "Data deleted successfully" });
  } catch (error) {
      console.error("Error deleting data:", error);
      return res.status(500).json({ status: false, message: "Internal server error" });
  }
};

export const getData = async (req: Request, res: Response): Promise<void | Response> => {
  const { page = 1, pageSize = 50 } = req.query;

  try {
      const pageNumber = parseInt(page as string);
      const pageSizeNumber = parseInt(pageSize as string);

      const data = await prisma.search.findMany({
          take: pageSizeNumber,
          skip: (pageNumber - 1) * pageSizeNumber
      });

      return res.status(200).json({ status: true, message: "Data fetched successfully", data });
  } catch (error) {
      console.error("Error fetching data:", error);
      return res.status(500).json({ status: false, message: "Internal server error" });
  }
};
