import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Skeleton } from "@/components/ui/skeleton";

export default function ProfileLoading() {
  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-3xl font-bold">個人資料</h1>
        <p className="text-muted-foreground mt-2">管理您的帳戶資訊</p>
      </div>

      <Card>
        <CardHeader>
          <CardTitle>帳戶資訊</CardTitle>
          <CardDescription>您的個人資料</CardDescription>
        </CardHeader>
        <CardContent className="space-y-4">
          <div>
            <p className="text-sm font-medium">電子郵件</p>
            <Skeleton className="h-4 w-48 mt-1" />
          </div>
          <div>
            <p className="text-sm font-medium">姓名</p>
            <Skeleton className="h-4 w-32 mt-1" />
          </div>
        </CardContent>
      </Card>

      <Card>
        <CardHeader>
          <CardTitle>修改密碼</CardTitle>
          <CardDescription>更新您的密碼</CardDescription>
        </CardHeader>
        <CardContent className="space-y-4">
          <div className="space-y-2">
            <Skeleton className="h-4 w-32" />
            <Skeleton className="h-10 w-full" />
          </div>
          <div className="space-y-2">
            <Skeleton className="h-4 w-32" />
            <Skeleton className="h-10 w-full" />
          </div>
          <Skeleton className="h-10 w-32" />
        </CardContent>
      </Card>
    </div>
  );
}
