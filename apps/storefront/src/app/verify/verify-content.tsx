"use client";

import { use, useEffect, useState } from "react";
import { VerifyResult } from "./verify-result";
import { verifyAccountAction } from "./actions";
import { Card, CardContent } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import Link from "next/link";
import { XCircle } from "lucide-react";

interface VerifyContentProps {
  searchParams: Promise<{ token?: string }>;
}

export function VerifyContent({ searchParams }: VerifyContentProps) {
  const params = use(searchParams);
  const token = params.token;

  if (!token) {
    return (
      <Card>
        <CardContent className="pt-6 space-y-4">
          <div className="flex justify-center">
            <XCircle className="h-16 w-16 text-destructive" />
          </div>
          <div className="space-y-2 text-center">
            <h1 className="text-2xl font-bold">無效的驗證連結</h1>
            <p className="text-muted-foreground">
              驗證連結無效或缺少必要的參數。請檢查您的電子郵件並重試。
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
        </CardContent>
      </Card>
    );
  }
  const [verifyPromise, setVerifyPromise] = useState(
    Promise.resolve<{ success: boolean }>({ success: false }),
  );
  useEffect(() => {
    // Your code here

    verifyAccountAction(token).then((result: any) => {
      // window.alert(JSON.stringify(result));
      return setVerifyPromise(Promise.resolve(result));
    });
  }, []);

  return <VerifyResult resultPromise={verifyPromise} />;
}
