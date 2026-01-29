"use client";

import { useActionState, useEffect } from "react";
import { updatePasswordAction } from "./actions";
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

export function ChangePasswordForm() {
  const [state, formAction, isPending] = useActionState(
    updatePasswordAction,
    undefined,
  );

  useEffect(() => {
    if (state?.success) {
      const form = document.getElementById(
        "change-password-form",
      ) as HTMLFormElement;
      form?.reset();
    }
  }, [state?.success]);

  return (
    <Card>
      <CardHeader>
        <CardTitle>修改密碼</CardTitle>
        <CardDescription>更新您的密碼以保持帳戶安全。</CardDescription>
      </CardHeader>
      <form id="change-password-form" action={formAction}>
        <CardContent className="space-y-4">
          <div className="space-y-2">
            <Label htmlFor="currentPassword">目前密碼</Label>
            <Input
              id="currentPassword"
              name="currentPassword"
              type="password"
              placeholder="••••••••"
              required
              disabled={isPending}
            />
          </div>
          <div className="space-y-2">
            <Label htmlFor="newPassword">新密碼</Label>
            <Input
              id="newPassword"
              name="newPassword"
              type="password"
              placeholder="••••••••"
              required
              disabled={isPending}
            />
          </div>
          <div className="space-y-2">
            <Label htmlFor="confirmPassword">確認新密碼</Label>
            <Input
              id="confirmPassword"
              name="confirmPassword"
              type="password"
              placeholder="••••••••"
              required
              disabled={isPending}
            />
          </div>
          {state?.error && (
            <div className="text-sm text-destructive">{state.error}</div>
          )}
          {state?.success && (
            <div className="text-sm text-green-600">密碼更新成功！</div>
          )}
          <Button type="submit" disabled={isPending}>
            {isPending ? "更新中..." : "更新密碼"}
          </Button>
        </CardContent>
      </form>
    </Card>
  );
}
