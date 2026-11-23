package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class PapayResult implements Serializable {
    public static final int PAYCANCLE = 3;
    public static final int PAYFAILED = 2;
    public static final int PAYSUCCESS = 1;
    public static final int PAYWHAITE = 4;
    private String gameid;
    private String message;
    private String payOrderId;
    private String payPabi;
    private String payProduct;
    private String payType;
    private int status;

    public String getGameid() {
        return this.gameid;
    }

    public String getMessage() {
        return this.message;
    }

    public String getPayOrderId() {
        return this.payOrderId;
    }

    public String getPayPabi() {
        return this.payPabi;
    }

    public String getPayProduct() {
        return this.payProduct;
    }

    public String getPayType() {
        return this.payType;
    }

    public int getStatus() {
        return this.status;
    }

    public void setGameid(String gameid) {
        this.gameid = gameid;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setPayOrderId(String payOrderId) {
        this.payOrderId = payOrderId;
    }

    public void setPayPabi(String payPabi) {
        this.payPabi = payPabi;
    }

    public void setPayProduct(String payProduct) {
        this.payProduct = payProduct;
    }

    public void setPayType(String payType) {
        this.payType = payType;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
