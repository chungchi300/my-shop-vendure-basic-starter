import { Suspense } from "react";
import { redirect } from "next/navigation";
import { mutate } from "@/lib/vendure/api";
import { UpdateCustomerEmailAddressMutation } from "@/lib/vendure/mutations";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import Link from "next/link";

async function VerifyEmailContent({
  searchParams,
}: {
  searchParams: Promise<Record<string, string | string[] | undefined>>;
}) {
  const resolvedParams = await searchParams;
  const tokenParam = resolvedParams.token;
  const token = Array.isArray(tokenParam) ? tokenParam[0] : tokenParam;

  if (!token) {
    return (
      <Card className="max-w-md mx-auto">
        <CardHeader>
          <CardTitle>無效的驗證連結</CardTitle>
          <CardDescription>驗證連結遺失或無效。</CardDescription>
        </CardHeader>
        <CardContent>
          <p className="text-sm text-muted-foreground mb-4">
            請檢查您的電子郵件以取得正確的驗證連結，或從您的個人資料頁面請求新的驗證連結。
          </p>
          <Button asChild>
            <Link href="/account/profile">前往個人資料</Link>
          </Button>
        </CardContent>
      </Card>
    );
  }

  try {
    const result = await mutate(
      UpdateCustomerEmailAddressMutation,
      { token: token! },
      { useAuthToken: true },
    );
    const updateResult = result.data.updateCustomerEmailAddress;

    if (updateResult.__typename === "Success") {
      return (
        <Card className="max-w-md mx-auto">
          <CardHeader>
            <CardTitle>電子郵件已驗證！</CardTitle>
            <CardDescription>您的電子郵件地址已成功更新。</CardDescription>
          </CardHeader>
          <CardContent>
            <p className="text-sm text-muted-foreground mb-4">
              您的電子郵件地址已更改。您現在可以使用新的電子郵件地址登入。
            </p>
            <Button asChild>
              <Link href="/account/profile">前往個人資料</Link>
            </Button>
          </CardContent>
        </Card>
      );
    }

    return (
      <Card className="max-w-md mx-auto">
        <CardHeader>
          <CardTitle>驗證失敗</CardTitle>
          <CardDescription>
            {updateResult.message || "無法驗證您的電子郵件地址。"}
          </CardDescription>
        </CardHeader>
        <CardContent>
          <p className="text-sm text-muted-foreground mb-4">
            驗證連結可能已過期或已被使用。請從您的個人資料頁面請求新的驗證電子郵件。
          </p>
          <Button asChild>
            <Link href="/account/profile">前往個人資料</Link>
          </Button>
        </CardContent>
      </Card>
    );
  } catch (error) {
    return (
      <Card className="max-w-md mx-auto">
        <CardHeader>
          <CardTitle>驗證錯誤</CardTitle>
          <CardDescription>驗證過程中發生了意外錯誤。</CardDescription>
        </CardHeader>
        <CardContent>
          <p className="text-sm text-muted-foreground mb-4">
            請稍後再試，或如果問題持續存在，請聯繫支援。
          </p>
          <Button asChild>
            <Link href="/account/profile">前往個人資料</Link>
          </Button>
        </CardContent>
      </Card>
    );
  }
}

export default async function VerifyEmailPage({
  searchParams,
}: PageProps<"/account/verify-email">) {
  return (
    <div className="container mx-auto px-4 py-8 mt-16">
      <Suspense
        fallback={
          <Card className="max-w-md mx-auto">
            <CardHeader>
              <CardTitle>驗證電子郵件中...</CardTitle>
              <CardDescription>
                請稍候，我們正在驗證您的電子郵件地址。
              </CardDescription>
            </CardHeader>
          </Card>
        }
      >
        <VerifyEmailContent searchParams={searchParams} />
      </Suspense>
    </div>
  );
}
