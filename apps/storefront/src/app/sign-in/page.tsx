import type { Metadata } from "next";
import { Suspense } from "react";
import { LoginForm } from "./login-form";
import { Card, CardContent, CardFooter } from "@/components/ui/card";
import { Skeleton } from "@/components/ui/skeleton";

export const metadata: Metadata = {
  title: "登入",
  description: "登入您的帳戶以訪問您的訂單、願望清單等。",
};

function LoginFormSkeleton() {
  return (
    <Card>
      <CardContent className="space-y-4 pt-6">
        <div className="space-y-2">
          <Skeleton className="h-4 w-12" />
          <Skeleton className="h-10 w-full" />
        </div>
        <div className="space-y-2">
          <Skeleton className="h-4 w-16" />
          <Skeleton className="h-10 w-full" />
        </div>
        <Skeleton className="h-10 w-full" />
      </CardContent>
      <CardFooter className="flex flex-col space-y-4">
        <div className="flex flex-col items-center space-y-2">
          <Skeleton className="h-4 w-40" />
        </div>
      </CardFooter>
    </Card>
  );
}

async function SignInContent({
  searchParams,
}: {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
}) {
  const resolvedParams = await searchParams;
  const redirectTo = resolvedParams?.redirectTo as string | undefined;

  return <LoginForm redirectTo={redirectTo} />;
}

export default async function SignInPage({
  searchParams,
}: PageProps<"/sign-in">) {
  return (
    <div className="flex min-h-screen items-center justify-center px-4">
      <div className="w-full max-w-md space-y-6">
        <div className="space-y-2 text-center">
          <h1 className="text-3xl font-bold">登入</h1>
          <p className="text-muted-foreground">輸入您的憑證以訪問您的帳戶</p>
        </div>
        <Suspense fallback={<LoginFormSkeleton />}>
          <SignInContent searchParams={searchParams} />
        </Suspense>
      </div>
    </div>
  );
}
