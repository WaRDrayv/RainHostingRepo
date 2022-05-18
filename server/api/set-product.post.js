import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();
import jwt from "jsonwebtoken";

export default defineEventHandler(async (event) => {
  const config = useRuntimeConfig();
  const headers = event.req.headers;
  const body = await useBody(event);
  const user = jwt.verify(headers.jwt, config.accessSecret);
  if (user) {
    await prisma.order.create({
      data: {
        title: "",
        status: "Pending",
        HostingSolutions: {
          create: body,
        },
        customerId: user.id,
      },
    });
    return "OK";
  } else {
    throwError(401);
  }
});
