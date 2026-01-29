"use client";

import { use, useActionState } from "react";
import { resetPasswordAction } from "./actions";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import Link from "next/link";

interface ResetPasswordFormProps {
  searchParams: Promise<{ token?: string }>;
}

export function ResetPasswordForm({ searchParams }: ResetPasswordFormProps) {
  const params = use(searchParams);
  const token = params.token || null;

  const [state, formAction, isPending] = useActionState(
    resetPasswordAction,
    undefined,
  );

  if (!token) {
    return (
      <Card>
        <CardHeader>
          <CardTitle>無效的重設連結</CardTitle>
          <CardDescription>
            密碼重設連結無效或已過期。請請求一個新的重設連結。
          </CardDescription>
        </CardHeader>
        <CardFooter>
          <Link href="/forgot-password">
            <Button variant="outline" className="w-full">
              請求新的重設連結
            </Button>
          </Link>
        </CardFooter>
      </Card>
    );
  }

  return (
    <Card>
      <CardHeader>
        <CardTitle>重設您的密碼</CardTitle>
        <CardDescription>請在下方輸入您的新密碼。</CardDescription>
      </CardHeader>
      <form action={formAction}>
        <input type="hidden" name="token" value={token} />
        <CardContent className="space-y-4">
          <div className="space-y-2">
            <Label htmlFor="password">新密碼</Label>
            <Input
              id="password"
              name="password"
              type="password"
              placeholder="••••••••"
              required
              disabled={isPending}
            />
          </div>
          <div className="space-y-2">
            <Label htmlFor="confirmPassword">確認密碼</Label>
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
        </CardContent>
        <CardFooter className="flex flex-col space-y-4">
          <Button type="submit" className="w-full" disabled={isPending}>
            {isPending ? "正在重設密碼..." : "重設密碼"}
          </Button>
          <Link
            href="/sign-in"
            className="text-sm text-center text-muted-foreground hover:text-primary"
          >
            返回登入
          </Link>
        </CardFooter>
      </form>
    </Card>
  );
}
