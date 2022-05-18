import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();
import jwt from "jsonwebtoken";

export default defineEventHandler(async (event) => {
  const config = useRuntimeConfig();
  const body = await useBody(event);
  console.log(body);
  const user = await prisma.customer.create({ data: { ...body } });
  return { user, jwt: jwt.sign(user, config.accessSecret) };
});
