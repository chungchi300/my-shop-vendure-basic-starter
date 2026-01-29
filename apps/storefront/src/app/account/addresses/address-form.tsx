"use client";

import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import {
  Field,
  FieldLabel,
  FieldError,
  FieldGroup,
} from "@/components/ui/field";
import { useForm, Controller } from "react-hook-form";
import { Loader2 } from "lucide-react";
import { CountrySelect } from "@/components/shared/country-select";

interface Country {
  id: string;
  code: string;
  name: string;
}

interface AddressFormData {
  fullName: string;
  streetLine1: string;
  streetLine2?: string;
  city: string;
  province: string;
  postalCode: string;
  countryCode: string;
  phoneNumber: string;
  company?: string;
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

interface AddressFormProps {
  countries: Country[];
  address?: CustomerAddress;
  onSubmit: (data: AddressFormData & { id?: string }) => Promise<void>;
  onCancel: () => void;
  isSubmitting: boolean;
}

export function AddressForm({
  countries,
  address,
  onSubmit,
  onCancel,
  isSubmitting,
}: AddressFormProps) {
  const {
    register,
    handleSubmit,
    formState: { errors },
    control,
  } = useForm<AddressFormData>({
    defaultValues: address
      ? {
          fullName: address.fullName || "",
          company: address.company || "",
          streetLine1: address.streetLine1,
          streetLine2: address.streetLine2 || "",
          city: address.city || "",
          province: address.province || "",
          postalCode: address.postalCode || "",
          countryCode: address.country.code,
          phoneNumber: address.phoneNumber || "",
        }
      : {
          countryCode: countries[0]?.code || "US",
        },
  });

  const handleFormSubmit = async (data: AddressFormData) => {
    await onSubmit(address ? { ...data, id: address.id } : data);
  };

  return (
    <form onSubmit={handleSubmit(handleFormSubmit)}>
      <FieldGroup className="my-6">
        <div className="grid grid-cols-2 gap-4">
          <Field className="col-span-2">
            <FieldLabel htmlFor="fullName">全名 *</FieldLabel>
            <Input
              id="fullName"
              {...register("fullName", { required: "請輸入全名" })}
              disabled={isSubmitting}
            />
            <FieldError>{errors.fullName?.message}</FieldError>
          </Field>

          <Field className="col-span-2">
            <FieldLabel htmlFor="company">公司</FieldLabel>
            <Input
              id="company"
              {...register("company")}
              disabled={isSubmitting}
            />
          </Field>

          <Field className="col-span-2">
            <FieldLabel htmlFor="streetLine1">街道地址 *</FieldLabel>
            <Input
              id="streetLine1"
              {...register("streetLine1", { required: "請輸入街道地址" })}
              disabled={isSubmitting}
            />
            <FieldError>{errors.streetLine1?.message}</FieldError>
          </Field>

          <Field className="col-span-2">
            <FieldLabel htmlFor="streetLine2">公寓、套房等</FieldLabel>
            <Input
              id="streetLine2"
              {...register("streetLine2")}
              disabled={isSubmitting}
            />
          </Field>

          <Field>
            <FieldLabel htmlFor="city">城市 *</FieldLabel>
            <Input
              id="city"
              {...register("city", { required: "請輸入城市" })}
              disabled={isSubmitting}
            />
            <FieldError>{errors.city?.message}</FieldError>
          </Field>

          <Field>
            <FieldLabel htmlFor="province">州/省 *</FieldLabel>
            <Input
              id="province"
              {...register("province", { required: "請輸入州/省" })}
              disabled={isSubmitting}
            />
            <FieldError>{errors.province?.message}</FieldError>
          </Field>

          <Field>
            <FieldLabel htmlFor="postalCode">郵遞區號 *</FieldLabel>
            <Input
              id="postalCode"
              {...register("postalCode", { required: "請輸入郵遞區號" })}
              disabled={isSubmitting}
            />
            <FieldError>{errors.postalCode?.message}</FieldError>
          </Field>

          <Field>
            <FieldLabel htmlFor="countryCode">國家 *</FieldLabel>
            <Controller
              name="countryCode"
              control={control}
              rules={{ required: "請選擇國家" }}
              render={({ field }) => (
                <CountrySelect
                  countries={countries}
                  value={field.value}
                  onValueChange={field.onChange}
                  disabled={isSubmitting}
                />
              )}
            />
            <FieldError>{errors.countryCode?.message}</FieldError>
          </Field>

          <Field className="col-span-2">
            <FieldLabel htmlFor="phoneNumber">電話號碼 *</FieldLabel>
            <Input
              id="phoneNumber"
              type="tel"
              {...register("phoneNumber", { required: "請輸入電話號碼" })}
              disabled={isSubmitting}
            />
            <FieldError>{errors.phoneNumber?.message}</FieldError>
          </Field>
        </div>
      </FieldGroup>

      <div className="flex gap-3 justify-end">
        <Button
          type="button"
          variant="outline"
          onClick={onCancel}
          disabled={isSubmitting}
        >
          取消
        </Button>
        <Button type="submit" disabled={isSubmitting}>
          {isSubmitting && <Loader2 className="mr-2 h-4 w-4 animate-spin" />}
          {address ? "更新地址" : "儲存地址"}
        </Button>
      </div>
    </form>
  );
}
