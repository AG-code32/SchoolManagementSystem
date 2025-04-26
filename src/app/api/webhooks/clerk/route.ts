import { WebhookEvent } from "@clerk/nextjs/server";
// import { clerkClient } from "@clerk/nextjs/server";
import clerk from "@clerk/clerk-sdk-node";

import { NextResponse } from "next/server";

export async function POST(req: Request) {
  const payload: WebhookEvent = await req.json();

  if (payload.type === "user.created") {
    const userId = payload.data.id;
    const emailAddress = payload.data.email_addresses[0]?.email_address;

    // Aquí puedes poner lógica extra si quieres.
    // Por ejemplo, si el email termina en "@student.com", ponerlo como student.

    try {
    //   await clerkClient.users.updateUser(userId, {
      await clerk.users.updateUser(userId, {
        publicMetadata: {
          role: "student",
        },
      });
      console.log(`Updated role for user ${emailAddress} to student.`);
    } catch (error) {
      console.error("Failed to update user metadata:", error);
    }
  }

  return NextResponse.json({ received: true });
}