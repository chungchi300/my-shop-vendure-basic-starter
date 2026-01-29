"use client";

import { useState } from "react";
import { Button } from "@/components/ui/button";
import { Loader2, MapPin, Truck, CreditCard, Edit } from "lucide-react";
import { useCheckout } from "../checkout-provider";
import { placeOrder as placeOrderAction } from "../actions";
import { Price } from "@/components/commerce/price";

interface ReviewStepProps {
  onEditStep: (step: "shipping" | "delivery" | "payment") => void;
}

export default function ReviewStep({ onEditStep }: ReviewStepProps) {
  const { order, paymentMethods, selectedPaymentMethodCode } = useCheckout();
  const [loading, setLoading] = useState(false);

  const selectedPaymentMethod = paymentMethods.find(
    (method) => method.code === selectedPaymentMethodCode,
  );

  const handlePlaceOrder = async () => {
    if (!selectedPaymentMethodCode) return;

    setLoading(true);
    try {
      await placeOrderAction(selectedPaymentMethodCode);
    } catch (error) {
      // Check if this is a Next.js redirect (which is expected)
      if (error instanceof Error && error.message.includes("NEXT_REDIRECT")) {
        // This is a redirect, not an error - let it propagate
        throw error;
      }
      console.error("Error placing order:", error);
      setLoading(false);
    }
  };

  return (
    <div className="space-y-6">
      <h3 className="font-semibold text-lg">確認您的訂單</h3>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
        {/* Shipping Address */}
        <div className="space-y-3">
          <div className="flex items-center gap-2">
            <MapPin className="h-5 w-5 text-muted-foreground" />
            <h4 className="font-medium">運送地址</h4>
          </div>
          {order.shippingAddress ? (
            <div className="text-sm space-y-3">
              <div>
                <p className="font-medium">{order.shippingAddress.fullName}</p>
                <p className="text-muted-foreground">
                  {order.shippingAddress.streetLine1}
                  {order.shippingAddress.streetLine2 &&
                    `, ${order.shippingAddress.streetLine2}`}
                </p>
                <p className="text-muted-foreground">
                  {order.shippingAddress.city}, {order.shippingAddress.province}{" "}
                  {order.shippingAddress.postalCode}
                </p>
                <p className="text-muted-foreground">
                  {order.shippingAddress.country}
                </p>
                <p className="text-muted-foreground">
                  {order.shippingAddress.phoneNumber}
                </p>
              </div>
              <Button
                variant="outline"
                size="sm"
                onClick={() => onEditStep("shipping")}
              >
                <Edit className="h-4 w-4 mr-1" />
                編輯
              </Button>
            </div>
          ) : (
            <p className="text-sm text-muted-foreground">尚未設定運送地址</p>
          )}
        </div>

        {/* Delivery Method */}
        <div className="space-y-3">
          <div className="flex items-center gap-2">
            <Truck className="h-5 w-5 text-muted-foreground" />
            <h4 className="font-medium">運送方式</h4>
          </div>
          {order.shippingLines && order.shippingLines.length > 0 ? (
            <div className="text-sm space-y-3">
              <div>
                <p className="font-medium">
                  {order.shippingLines[0].shippingMethod.name}
                </p>
                <p className="text-muted-foreground">
                  {order.shippingLines[0].priceWithTax === 0 ? (
                    "FREE"
                  ) : (
                    <Price
                      value={order.shippingLines[0].priceWithTax}
                      currencyCode={order.currencyCode}
                    />
                  )}
                </p>
              </div>
              <Button
                variant="outline"
                size="sm"
                onClick={() => onEditStep("delivery")}
              >
                <Edit className="h-4 w-4 mr-1" />
                Edit
              </Button>
            </div>
          ) : (
            <p className="text-sm text-muted-foreground">尚未選擇運送方式</p>
          )}
        </div>

        {/* Payment Method */}
        <div className="space-y-3">
          <div className="flex items-center gap-2">
            <CreditCard className="h-5 w-5 text-muted-foreground" />
            <h4 className="font-medium">付款方式</h4>
          </div>
          {selectedPaymentMethod ? (
            <div className="text-sm space-y-3">
              <div>
                <p className="font-medium">{selectedPaymentMethod.name}</p>
                {selectedPaymentMethod.description && (
                  <p className="text-muted-foreground mt-1">
                    {selectedPaymentMethod.description}
                  </p>
                )}
              </div>
              <Button
                variant="outline"
                size="sm"
                onClick={() => onEditStep("payment")}
              >
                <Edit className="h-4 w-4 mr-1" />
                Edit
              </Button>
            </div>
          ) : (
            <p className="text-sm text-muted-foreground">尚未選擇付款方式</p>
          )}
        </div>
      </div>

      <Button
        onClick={handlePlaceOrder}
        disabled={
          loading ||
          !order.shippingAddress ||
          !order.shippingLines?.length ||
          !selectedPaymentMethodCode
        }
        size="lg"
        className="w-full"
      >
        {loading && <Loader2 className="mr-2 h-4 w-4 animate-spin" />}
        下單
      </Button>

      {(!order.shippingAddress ||
        !order.shippingLines?.length ||
        !selectedPaymentMethodCode) && (
        <p className="text-sm text-destructive text-center">
          請完成所有前面的步驟後再下單
        </p>
      )}
    </div>
  );
}
