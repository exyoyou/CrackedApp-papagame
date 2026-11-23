package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class PayGamepayData {
    private String amount;
    private String callbackURL;
    private String orderId;
    private int payMode;
    private String sdkAppKey;
    private String sdkPayURL;
    private String webPaymentURL;

    public String getAmount() {
        return this.amount;
    }

    public String getCallbackURL() {
        return this.callbackURL;
    }

    public String getOrderId() {
        return this.orderId;
    }

    public int getPayMode() {
        return this.payMode;
    }

    public String getSdkAppKey() {
        return this.sdkAppKey;
    }

    public String getSdkPayURL() {
        return this.sdkPayURL;
    }

    public String getWebPaymentURL() {
        return this.webPaymentURL;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public void setCallbackURL(String callbackURL) {
        this.callbackURL = callbackURL;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public void setPayMode(int payMode) {
        this.payMode = payMode;
    }

    public void setSdkAppKey(String sdkAppKey) {
        this.sdkAppKey = sdkAppKey;
    }

    public void setSdkPayURL(String sdkPayURL) {
        this.sdkPayURL = sdkPayURL;
    }

    public void setWebPaymentURL(String webPaymentURL) {
        this.webPaymentURL = webPaymentURL;
    }
}
