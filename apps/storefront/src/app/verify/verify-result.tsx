"use client";

import { use } from "react";
import { Card, CardContent } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import Link from "next/link";
import { CheckCircle, XCircle } from "lucide-react";

type VerifyResultType =
  | { success: boolean; error?: undefined }
  | { error: string; success?: undefined };

interface VerifyResultProps {
  resultPromise: Promise<VerifyResultType>;
}

export function VerifyResult({ resultPromise }: VerifyResultProps) {
  const result = use(resultPromise);

  const isSuccess = "success" in result;

  return (
    <Card>
      <CardContent className="pt-6 space-y-4">
        {isSuccess ? (
          <>
            <div className="flex justify-center">
              <CheckCircle className="h-16 w-16 text-green-600" />
            </div>
            <div className="space-y-2 text-center">
              <h1 className="text-2xl font-bold">帳戶已驗證！</h1>
              <p className="text-muted-foreground">
                您的電子郵件已成功驗證。您現在可以登入您的帳戶。
              </p>
            </div>
            <Link href="/sign-in" className="block">
              <Button className="w-full">登入</Button>
            </Link>
          </>
        ) : (
          <>
            <div className="flex justify-center">
              <XCircle className="h-16 w-16 text-destructive" />
            </div>
            <div className="space-y-2 text-center">
              <h1 className="text-2xl font-bold">驗證失敗</h1>
              <p className="text-muted-foreground">
                {result.error || "無法驗證您的帳戶。驗證連結可能已過期。"}
              </p>
            </div>
            <div className="flex flex-col gap-2">
              <Link href="/register" className="block">
                <Button variant="outline" className="w-full">
                  建立新帳戶
                </Button>
              </Link>
              <Link href="/sign-in" className="block">
                <Button variant="ghost" className="w-full">
                  返回登入
                </Button>
              </Link>
            </div>
          </>
        )}
      </CardContent>
    </Card>
  );
}
