import { Button } from "@/components/ui/button";
import Link from "next/link";

export default function NotFound() {
  return (
    <div className="min-h-[calc(100vh-4rem)] flex items-center justify-center px-4">
      <div className="text-center space-y-6 max-w-md">
        <h1 className="text-6xl font-bold text-primary">404</h1>
        <h2 className="text-2xl font-semibold">沒找到頁面</h2>
        <p className="text-muted-foreground">
          找不到您要尋找的頁面。請檢查網址是否正確或返回主頁。
        </p>
        <div className="flex gap-4 justify-center">
          <Button asChild>
            <Link href="/">返回主頁</Link>
          </Button>
        </div>
      </div>
    </div>
  );
}
