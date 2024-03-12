/*
  Warnings:

  - You are about to drop the `Data` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Data";

-- CreateTable
CREATE TABLE "Search" (
    "id" SERIAL NOT NULL,
    "path" TEXT NOT NULL,
    "definition" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Search_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "On_Search" (
    "id" SERIAL NOT NULL,
    "path" TEXT NOT NULL,
    "definition" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "On_Search_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Select" (
    "id" SERIAL NOT NULL,
    "path" TEXT NOT NULL,
    "definition" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Select_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "On_Select" (
    "id" SERIAL NOT NULL,
    "path" TEXT NOT NULL,
    "definition" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "On_Select_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Init" (
    "id" SERIAL NOT NULL,
    "path" TEXT NOT NULL,
    "definition" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Init_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "On_Init" (
    "id" SERIAL NOT NULL,
    "path" TEXT NOT NULL,
    "definition" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "On_Init_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Confirm" (
    "id" SERIAL NOT NULL,
    "path" TEXT NOT NULL,
    "definition" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Confirm_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "On_Confirm" (
    "id" SERIAL NOT NULL,
    "path" TEXT NOT NULL,
    "definition" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "On_Confirm_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Update" (
    "id" SERIAL NOT NULL,
    "path" TEXT NOT NULL,
    "definition" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Update_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "On_Update" (
    "id" SERIAL NOT NULL,
    "path" TEXT NOT NULL,
    "definition" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "On_Update_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Cancel" (
    "id" SERIAL NOT NULL,
    "path" TEXT NOT NULL,
    "definition" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Cancel_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "On_Cancel" (
    "id" SERIAL NOT NULL,
    "path" TEXT NOT NULL,
    "definition" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "On_Cancel_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Search_path_key" ON "Search"("path");

-- CreateIndex
CREATE UNIQUE INDEX "On_Search_path_key" ON "On_Search"("path");

-- CreateIndex
CREATE UNIQUE INDEX "Select_path_key" ON "Select"("path");

-- CreateIndex
CREATE UNIQUE INDEX "On_Select_path_key" ON "On_Select"("path");

-- CreateIndex
CREATE UNIQUE INDEX "Init_path_key" ON "Init"("path");

-- CreateIndex
CREATE UNIQUE INDEX "On_Init_path_key" ON "On_Init"("path");

-- CreateIndex
CREATE UNIQUE INDEX "Confirm_path_key" ON "Confirm"("path");

-- CreateIndex
CREATE UNIQUE INDEX "On_Confirm_path_key" ON "On_Confirm"("path");

-- CreateIndex
CREATE UNIQUE INDEX "Update_path_key" ON "Update"("path");

-- CreateIndex
CREATE UNIQUE INDEX "On_Update_path_key" ON "On_Update"("path");

-- CreateIndex
CREATE UNIQUE INDEX "Cancel_path_key" ON "Cancel"("path");

-- CreateIndex
CREATE UNIQUE INDEX "On_Cancel_path_key" ON "On_Cancel"("path");
