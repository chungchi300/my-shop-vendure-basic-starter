"use client";

import { useState } from "react";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import {
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
} from "@/components/ui/alert-dialog";
import { Badge } from "@/components/ui/badge";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import {
  Plus,
  MoreVertical,
  Home,
  CreditCard,
  Edit2,
  Trash2,
} from "lucide-react";
import { AddressForm } from "./address-form";
import {
  createAddress,
  updateAddress,
  deleteAddress,
  setDefaultShippingAddress,
  setDefaultBillingAddress,
} from "./actions";
import { useRouter } from "next/navigation";

interface Country {
  id: string;
  code: string;
  name: string;
}

interface CustomerAddress {
  id: string;
  fullName?: string | null;
  company?: string | null;
  streetLine1: string;
  streetLine2?: string | null;
  city?: string | null;
  province?: string | null;
  postalCode?: string | null;
  country: { id: string; code: string; name: string };
  phoneNumber?: string | null;
  defaultShippingAddress?: boolean | null;
  defaultBillingAddress?: boolean | null;
}

interface AddressesClientProps {
  addresses: CustomerAddress[];
  countries: Country[];
}

export function AddressesClient({
  addresses,
  countries,
}: AddressesClientProps) {
  const router = useRouter();
  const [dialogOpen, setDialogOpen] = useState(false);
  const [editingAddress, setEditingAddress] = useState<CustomerAddress | null>(
    null,
  );
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [deleteDialogOpen, setDeleteDialogOpen] = useState(false);
  const [addressToDelete, setAddressToDelete] = useState<string | null>(null);
  const [isDeleting, setIsDeleting] = useState(false);
  const [settingDefault, setSettingDefault] = useState<{
    id: string;
    type: "shipping" | "billing";
  } | null>(null);

  const handleAddNew = () => {
    setEditingAddress(null);
    setDialogOpen(true);
  };

  const handleEdit = (address: CustomerAddress) => {
    setEditingAddress(address);
    setDialogOpen(true);
  };

  const handleDelete = (addressId: string) => {
    setAddressToDelete(addressId);
    setDeleteDialogOpen(true);
  };

  const handleSetDefaultShipping = async (addressId: string) => {
    setSettingDefault({ id: addressId, type: "shipping" });
    try {
      await setDefaultShippingAddress(addressId);
      router.refresh();
    } catch (error) {
      console.error("Error setting default shipping address:", error);
      alert(`Error: ${error instanceof Error ? error.message : "未知錯誤"}`);
    } finally {
      setSettingDefault(null);
    }
  };

  const handleSetDefaultBilling = async (addressId: string) => {
    setSettingDefault({ id: addressId, type: "billing" });
    try {
      await setDefaultBillingAddress(addressId);
      router.refresh();
    } catch (error) {
      console.error("Error setting default billing address:", error);
      alert(`Error: ${error instanceof Error ? error.message : "未知錯誤"}`);
    } finally {
      setSettingDefault(null);
    }
  };

  const confirmDelete = async () => {
    if (!addressToDelete) return;

    setIsDeleting(true);
    try {
      await deleteAddress(addressToDelete);
      router.refresh();
      setDeleteDialogOpen(false);
      setAddressToDelete(null);
    } catch (error) {
      console.error("Error deleting address:", error);
      alert(
        `Error deleting address: ${error instanceof Error ? error.message : "未知錯誤"}`,
      );
    } finally {
      setIsDeleting(false);
    }
  };

  const handleSubmit = async (data: any) => {
    setIsSubmitting(true);
    try {
      if (editingAddress) {
        await updateAddress(data);
      } else {
        await createAddress(data);
      }
      router.refresh();
      setDialogOpen(false);
      setEditingAddress(null);
    } catch (error) {
      console.error("Error saving address:", error);
      alert(
        `Error saving address: ${error instanceof Error ? error.message : "未知錯誤"}`,
      );
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <>
      <div className="flex justify-between items-center">
        <div></div>
        <Button onClick={handleAddNew}>
          <Plus className="mr-2 h-4 w-4" />
          新增地址
        </Button>
      </div>

      {addresses.length === 0 ? (
        <Card>
          <CardContent className="py-12 text-center">
            <p className="text-muted-foreground mb-4">沒有地址</p>
            <Button onClick={handleAddNew}>
              <Plus className="mr-2 h-4 w-4" />
              新增您的第一個地址
            </Button>
          </CardContent>
        </Card>
      ) : (
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          {addresses.map((address) => (
            <Card key={address.id}>
              <CardHeader>
                <div className="flex items-start justify-between">
                  <div className="space-y-1 flex-1">
                    <CardTitle className="text-lg">
                      {address.fullName}
                    </CardTitle>
                    {(address.defaultShippingAddress ||
                      address.defaultBillingAddress) && (
                      <div className="flex gap-2">
                        {address.defaultShippingAddress && (
                          <Badge variant="secondary">默認運送地址</Badge>
                        )}
                        {address.defaultBillingAddress && (
                          <Badge variant="secondary">默認帳單地址</Badge>
                        )}
                      </div>
                    )}
                  </div>
                  <DropdownMenu>
                    <DropdownMenuTrigger asChild>
                      <Button
                        variant="ghost"
                        size="icon"
                        aria-label="Address actions"
                      >
                        <MoreVertical className="h-4 w-4" />
                      </Button>
                    </DropdownMenuTrigger>
                    <DropdownMenuContent align="end">
                      <DropdownMenuItem onClick={() => handleEdit(address)}>
                        <Edit2 className="mr-2 h-4 w-4" />
                        編輯
                      </DropdownMenuItem>
                      <DropdownMenuSeparator />
                      <DropdownMenuItem
                        onClick={() => handleSetDefaultShipping(address.id)}
                        disabled={
                          address.defaultShippingAddress ||
                          (settingDefault?.id === address.id &&
                            settingDefault?.type === "shipping")
                        }
                      >
                        <Home className="mr-2 h-4 w-4" />
                        {address.defaultShippingAddress
                          ? "默認運送地址"
                          : "設為運送地址"}
                      </DropdownMenuItem>
                      <DropdownMenuItem
                        onClick={() => handleSetDefaultBilling(address.id)}
                        disabled={
                          address.defaultBillingAddress ||
                          (settingDefault?.id === address.id &&
                            settingDefault?.type === "billing")
                        }
                      >
                        <CreditCard className="mr-2 h-4 w-4" />
                        {address.defaultBillingAddress
                          ? "默認帳單地址"
                          : "設為帳單地址"}
                      </DropdownMenuItem>
                      <DropdownMenuSeparator />
                      <DropdownMenuItem
                        onClick={() => handleDelete(address.id)}
                        className="text-destructive focus:text-destructive"
                      >
                        <Trash2 className="mr-2 h-4 w-4 text-destructive" />
                        刪除
                      </DropdownMenuItem>
                    </DropdownMenuContent>
                  </DropdownMenu>
                </div>
              </CardHeader>
              <CardContent>
                <div className="text-sm text-muted-foreground space-y-1">
                  {address.company && <p>{address.company}</p>}
                  <p>
                    {address.streetLine1}
                    {address.streetLine2 && `, ${address.streetLine2}`}
                  </p>
                  <p>
                    {address.city}, {address.province} {address.postalCode}
                  </p>
                  <p>{address.country.name}</p>
                  <p>{address.phoneNumber}</p>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      )}

      <Dialog open={dialogOpen} onOpenChange={setDialogOpen}>
        <DialogContent className="max-w-2xl max-h-[90vh] overflow-y-auto">
          <DialogHeader>
            <DialogTitle>
              {editingAddress ? "編輯地址" : "新增地址"}
            </DialogTitle>
            <DialogDescription>
              {editingAddress ? "更新您的地址詳情" : "請填寫以下表格以新增地址"}
            </DialogDescription>
          </DialogHeader>
          <AddressForm
            countries={countries}
            address={editingAddress || undefined}
            onSubmit={handleSubmit}
            onCancel={() => {
              setDialogOpen(false);
              setEditingAddress(null);
            }}
            isSubmitting={isSubmitting}
          />
        </DialogContent>
      </Dialog>

      <AlertDialog open={deleteDialogOpen} onOpenChange={setDeleteDialogOpen}>
        <AlertDialogContent>
          <AlertDialogHeader>
            <AlertDialogTitle>您確定嗎？</AlertDialogTitle>
            <AlertDialogDescription>
              此操作無法撤銷。這將永久刪除此地址。
            </AlertDialogDescription>
          </AlertDialogHeader>
          <AlertDialogFooter>
            <AlertDialogCancel disabled={isDeleting}>取消</AlertDialogCancel>
            <AlertDialogAction onClick={confirmDelete} disabled={isDeleting}>
              {isDeleting ? "刪除中..." : "刪除"}
            </AlertDialogAction>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialog>
    </>
  );
}
