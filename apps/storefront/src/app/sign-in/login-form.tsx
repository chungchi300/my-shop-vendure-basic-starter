"use client";

import { useState, useTransition } from "react";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import * as z from "zod";
import { loginAction } from "./actions";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Card, CardContent, CardFooter } from "@/components/ui/card";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
import Link from "next/link";

const loginSchema = z.object({
  username: z.string().email("請輸入有效的電郵地址"),
  password: z.string().min(1, "密碼為必填項"),
});

type LoginFormData = z.infer<typeof loginSchema>;

interface LoginFormProps {
  redirectTo?: string;
}

export function LoginForm({ redirectTo }: LoginFormProps) {
  const [isPending, startTransition] = useTransition();
  const [serverError, setServerError] = useState<string | null>(null);

  const form = useForm<LoginFormData>({
    resolver: zodResolver(loginSchema),
    defaultValues: {
      username: "",
      password: "",
    },
  });

  const onSubmit = (data: LoginFormData) => {
    setServerError(null);

    startTransition(async () => {
      const formData = new FormData();
      formData.append("username", data.username);
      formData.append("password", data.password);
      if (redirectTo) {
        formData.append("redirectTo", redirectTo);
      }

      const result = await loginAction(undefined, formData);
      if (result?.error) {
        setServerError(result.error);
      }
    });
  };

  const registerHref = redirectTo
    ? `/register?redirectTo=${encodeURIComponent(redirectTo)}`
    : "/register";

  return (
    <Card>
      <Form {...form}>
        <form onSubmit={form.handleSubmit(onSubmit)}>
          <CardContent className="space-y-4">
            <FormField
              control={form.control}
              name="username"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>電郵地址</FormLabel>
                  <FormControl>
                    <Input
                      type="email"
                      placeholder="you@example.com"
                      disabled={isPending}
                      {...field}
                    />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />

            <FormField
              control={form.control}
              name="password"
              render={({ field }) => (
                <FormItem>
                  <div className="flex items-center justify-between">
                    <FormLabel>密碼</FormLabel>
                    <Link
                      href="/forgot-password"
                      className="text-muted-foreground hover:text-primary text-sm"
                    >
                      忘記密碼？
                    </Link>
                  </div>

                  <FormControl>
                    <Input
                      type="password"
                      placeholder="••••••••"
                      disabled={isPending}
                      {...field}
                    />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />

            {serverError && (
              <div className="text-sm text-destructive">{serverError}</div>
            )}
            <Button type="submit" className="w-full" disabled={isPending}>
              {isPending ? "登入中..." : "登入"}
            </Button>
          </CardContent>
          <CardFooter className="flex flex-col space-y-4 mt-2">
            <div className="text-muted-foreground text-sm text-center">
              沒有帳號？{" "}
              <Link
                href={registerHref}
                className="hover:text-primary underline"
              >
                註冊
              </Link>
            </div>
          </CardFooter>
        </form>
      </Form>
    </Card>
  );
}
