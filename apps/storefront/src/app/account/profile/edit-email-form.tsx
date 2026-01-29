"use client";

import { useActionState, useEffect } from "react";
import { requestEmailUpdateAction } from "./actions";
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

interface EditEmailFormProps {
  currentEmail: string;
}

export function EditEmailForm({ currentEmail }: EditEmailFormProps) {
  const [state, formAction, isPending] = useActionState(
    requestEmailUpdateAction,
    undefined,
  );

  useEffect(() => {
    if (state?.success) {
      const form = document.getElementById(
        "edit-email-form",
      ) as HTMLFormElement;
      form?.reset();
    }
  }, [state?.success]);

  return (
    <Card>
      <CardHeader>
        <CardTitle>電子郵件地址</CardTitle>
        <CardDescription>
          更新您的電子郵件地址。您需要驗證新的電子郵件。
        </CardDescription>
      </CardHeader>
      <form id="edit-email-form" action={formAction}>
        <CardContent className="space-y-4">
          <div className="space-y-2">
            <Label htmlFor="currentEmail">現有電子郵件</Label>
            <Input
              id="currentEmail"
              type="email"
              value={currentEmail}
              disabled
              className="bg-muted"
            />
          </div>
          <div className="space-y-2">
            <Label htmlFor="newEmailAddress">新電子郵件地址</Label>
            <Input
              id="newEmailAddress"
              name="newEmailAddress"
              type="email"
              placeholder="new.email@example.com"
              required
              disabled={isPending}
            />
          </div>
          <div className="space-y-2">
            <Label htmlFor="password">目前密碼</Label>
            <Input
              id="password"
              name="password"
              type="password"
              placeholder="••••••••"
              required
              disabled={isPending}
            />
            <p className="text-xs text-muted-foreground">
              請輸入您的密碼以確認此更改。
            </p>
          </div>
          {state?.error && (
            <div className="text-sm text-destructive">{state.error}</div>
          )}
          {state?.success && (
            <div className="text-sm text-green-600">
              驗證電子郵件已發送！請檢查您的收件箱並點擊連結以確認您的新電子郵件地址。
            </div>
          )}
          <Button type="submit" disabled={isPending}>
            {isPending ? "發送中..." : "更新電子郵件"}
          </Button>
        </CardContent>
      </form>
    </Card>
  );
}
