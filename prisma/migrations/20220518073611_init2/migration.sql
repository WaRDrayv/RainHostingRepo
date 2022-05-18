/*
  Warnings:

  - Added the required column `solutionID` to the `Order` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Order" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "data" DATETIME NOT NULL,
    "title" TEXT NOT NULL,
    "customerID" INTEGER NOT NULL,
    "solutionID" INTEGER NOT NULL,
    "status" TEXT,
    CONSTRAINT "Order_customerID_fkey" FOREIGN KEY ("customerID") REFERENCES "Customer" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Order" ("customerID", "data", "id", "status", "title") SELECT "customerID", "data", "id", "status", "title" FROM "Order";
DROP TABLE "Order";
ALTER TABLE "new_Order" RENAME TO "Order";
CREATE TABLE "new_HostingsSolution" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT,
    "price" INTEGER,
    "type" TEXT,
    "rom" INTEGER NOT NULL,
    "ram" INTEGER NOT NULL,
    "cores" INTEGER NOT NULL
);
INSERT INTO "new_HostingsSolution" ("cores", "id", "price", "ram", "rom", "title", "type") SELECT "cores", "id", "price", "ram", "rom", "title", "type" FROM "HostingsSolution";
DROP TABLE "HostingsSolution";
ALTER TABLE "new_HostingsSolution" RENAME TO "HostingsSolution";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
