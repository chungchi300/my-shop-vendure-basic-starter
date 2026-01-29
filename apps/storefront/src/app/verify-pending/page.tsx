import type { Metadata } from "next";
import { Suspense } from "react";
import { Card, CardContent, CardFooter } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import Link from "next/link";
import { CheckCircle } from "lucide-react";

export const metadata: Metadata = {
  title: "驗證待處理",
  description: "請檢查您的電子郵件以驗證您的帳戶。",
};

async function VerifyPendingContent({
  searchParams,
}: {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
}) {
  const resolvedParams = await searchParams;
  const redirectTo = resolvedParams?.redirectTo as string | undefined;

  const signInHref = redirectTo
    ? `/sign-in?redirectTo=${encodeURIComponent(redirectTo)}`
    : "/sign-in";

  return (
    <Card>
      <CardContent className="pt-6 space-y-4">
        <div className="flex justify-center">
          <CheckCircle className="h-16 w-16 text-green-600" />
        </div>
        <div className="space-y-2 text-center">
          <h1 className="text-2xl font-bold">檢查您的電子郵件</h1>
          <p className="text-muted-foreground">
            我們已向您的電子郵件地址發送了一個驗證連結。
            請檢查您的收件箱並點擊該連結以驗證您的帳戶。
          </p>
        </div>
        <div className="bg-muted p-4 rounded-md">
          <p className="text-sm text-muted-foreground">
            沒有收到電子郵件？請檢查您的垃圾郵件文件夾或請求新的驗證連結。
          </p>
        </div>
      </CardContent>
      <CardFooter className="flex flex-col space-y-2">
        <Link href={signInHref} className="w-full">
          <Button className="w-full">前往登入</Button>
        </Link>
      </CardFooter>
    </Card>
  );
}

export default async function VerifyPendingPage({
  searchParams,
}: PageProps<"/verify-pending">) {
  return (
    <div className="flex min-h-screen items-center justify-center px-4">
      <div className="w-full max-w-md space-y-6">
        <Suspense fallback={<div>載入中...</div>}>
          <VerifyPendingContent searchParams={searchParams} />
        </Suspense>
      </div>
    </div>
  );
}
