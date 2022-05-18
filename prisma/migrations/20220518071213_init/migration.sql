-- CreateTable
CREATE TABLE "Customer" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT,
    "email" TEXT NOT NULL,
    "password" TEXT
);

-- CreateTable
CREATE TABLE "HostingsSolution" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT,
    "price" INTEGER,
    "type" TEXT,
    "rom" INTEGER NOT NULL,
    "ram" INTEGER NOT NULL,
    "cores" INTEGER NOT NULL,
    CONSTRAINT "HostingsSolution_id_fkey" FOREIGN KEY ("id") REFERENCES "Order" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Order" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "data" DATETIME NOT NULL,
    "title" TEXT NOT NULL,
    "customerID" INTEGER NOT NULL,
    "status" TEXT,
    CONSTRAINT "Order_customerID_fkey" FOREIGN KEY ("customerID") REFERENCES "Customer" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "RelationCustomerOrder" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "customerId" INTEGER NOT NULL,
    "orderId" INTEGER NOT NULL,
    CONSTRAINT "RelationCustomerOrder_customerId_fkey" FOREIGN KEY ("customerId") REFERENCES "Customer" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "RelationCustomerOrder_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "Order" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "Customer_email_key" ON "Customer"("email");

-- CreateIndex
CREATE UNIQUE INDEX "RelationCustomerOrder_customerId_key" ON "RelationCustomerOrder"("customerId");

-- CreateIndex
CREATE UNIQUE INDEX "RelationCustomerOrder_orderId_key" ON "RelationCustomerOrder"("orderId");
