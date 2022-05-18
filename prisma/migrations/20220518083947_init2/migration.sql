/*
  Warnings:

  - You are about to drop the `RelationCustomerOrder` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the column `solutionID` on the `Order` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "RelationCustomerOrder_orderId_key";

-- DropIndex
DROP INDEX "RelationCustomerOrder_customerId_key";

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "RelationCustomerOrder";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "Employee" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "orderId" INTEGER NOT NULL,
    CONSTRAINT "Employee_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "Order" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Order" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "data" DATETIME NOT NULL,
    "title" TEXT NOT NULL,
    "customerID" INTEGER NOT NULL,
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
    "cores" INTEGER NOT NULL,
    CONSTRAINT "HostingsSolution_id_fkey" FOREIGN KEY ("id") REFERENCES "Order" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_HostingsSolution" ("cores", "id", "price", "ram", "rom", "title", "type") SELECT "cores", "id", "price", "ram", "rom", "title", "type" FROM "HostingsSolution";
DROP TABLE "HostingsSolution";
ALTER TABLE "new_HostingsSolution" RENAME TO "HostingsSolution";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;

-- CreateIndex
CREATE UNIQUE INDEX "Employee_orderId_key" ON "Employee"("orderId");
