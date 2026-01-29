"use client";

import { useActionState, useEffect } from "react";
import { updateCustomerAction } from "./actions";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";

interface EditProfileFormProps {
  customer: {
    firstName: string;
    lastName: string;
  } | null;
}

export function EditProfileForm({ customer }: EditProfileFormProps) {
  const [state, formAction, isPending] = useActionState(
    updateCustomerAction,
    undefined,
  );

  useEffect(() => {
    if (state?.success) {
      const form = document.getElementById(
        "edit-profile-form",
      ) as HTMLFormElement;
      form?.reset();
    }
  }, [state?.success]);

  return (
    <Card>
      <CardHeader>
        <CardTitle>個人資料</CardTitle>
        <CardDescription>更新您的個人資料。</CardDescription>
      </CardHeader>
      <form id="edit-profile-form" action={formAction}>
        <CardContent className="space-y-4">
          <div className="space-y-2">
            <Label htmlFor="firstName">名字</Label>
            <Input
              id="firstName"
              name="firstName"
              type="text"
              placeholder="John"
              defaultValue={customer?.firstName || ""}
              required
              disabled={isPending}
            />
          </div>
          <div className="space-y-2">
            <Label htmlFor="lastName">姓氏</Label>
            <Input
              id="lastName"
              name="lastName"
              type="text"
              placeholder="Doe"
              defaultValue={customer?.lastName || ""}
              required
              disabled={isPending}
            />
          </div>
          {state?.error && (
            <div className="text-sm text-destructive">{state.error}</div>
          )}
          {state?.success && (
            <div className="text-sm text-green-600">個人資料更新成功！</div>
          )}
          <Button type="submit" disabled={isPending}>
            {isPending ? "更新中..." : "更新個人資料"}
          </Button>
        </CardContent>
      </form>
    </Card>
  );
}
