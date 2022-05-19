/*
  Warnings:

  - You are about to drop the `HostingsSolution` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the column `customerID` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `data` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `solutionID` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `Customer` table. All the data in the column will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "HostingsSolution";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "HostingSolution" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT,
    "price" TEXT,
    "type" TEXT,
    "rom" TEXT NOT NULL,
    "ram" TEXT NOT NULL,
    "cores" TEXT NOT NULL,
    "dbs" TEXT NOT NULL,
    "ssl" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "_HostingSolutionToOrder" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_HostingSolutionToOrder_A_fkey" FOREIGN KEY ("A") REFERENCES "HostingSolution" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_HostingSolutionToOrder_B_fkey" FOREIGN KEY ("B") REFERENCES "Order" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Order" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "date" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "title" TEXT NOT NULL,
    "status" TEXT,
    "customerId" INTEGER,
    CONSTRAINT "Order_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES "Customer" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_Order" ("id", "status", "title") SELECT "id", "status", "title" FROM "Order";
DROP TABLE "Order";
ALTER TABLE "new_Order" RENAME TO "Order";
CREATE TABLE "new_Customer" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "user" TEXT,
    "email" TEXT NOT NULL,
    "password" TEXT
);
INSERT INTO "new_Customer" ("email", "id", "password") SELECT "email", "id", "password" FROM "Customer";
DROP TABLE "Customer";
ALTER TABLE "new_Customer" RENAME TO "Customer";
CREATE UNIQUE INDEX "Customer_email_key" ON "Customer"("email");
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;

-- CreateIndex
CREATE UNIQUE INDEX "_HostingSolutionToOrder_AB_unique" ON "_HostingSolutionToOrder"("A", "B");

-- CreateIndex
CREATE INDEX "_HostingSolutionToOrder_B_index" ON "_HostingSolutionToOrder"("B");
