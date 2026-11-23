package com.switfpass.pay.bean;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class RequestMsg implements Serializable {
    private String X;
    private String appId;
    private String bW;
    private String cA;
    private String cB;
    private String cC;
    private String cD;
    private String cE;
    private String cF;
    private String cG;
    private String cH;
    private String ch;
    private String cm;
    private String co;
    private String cs;
    private String ct;
    private Integer cu;
    private double cz;
    private String mchId;
    private String sign;
    private String tokenId;

    public String getApiKey() {
        return this.cG;
    }

    public String getAppId() {
        return this.appId;
    }

    public String getAppKey() {
        return this.cC;
    }

    public String getAuthCode() {
        return this.cH;
    }

    public Integer getBankType() {
        return this.cu;
    }

    public String getBody() {
        return this.co;
    }

    public String getCashierName() {
        return this.cs;
    }

    public String getMchId() {
        return this.mchId;
    }

    public double getMoney() {
        return this.cz;
    }

    public String getNotifyUrl() {
        return this.cA;
    }

    public String getOutTradeNo() {
        return this.X;
    }

    public String getPartner() {
        return this.cm;
    }

    public String getPay_logo() {
        return this.ct;
    }

    public String getSellerId() {
        return this.cD;
    }

    public String getServerType() {
        return this.cE;
    }

    public String getSign() {
        return this.sign;
    }

    public String getSignKey() {
        return this.cB;
    }

    public String getSubOpenID() {
        return this.cF;
    }

    public String getTokenId() {
        return this.tokenId;
    }

    public String getTradeName() {
        return this.ch;
    }

    public String getTradeType() {
        return this.bW;
    }

    public void setApiKey(String str) {
        this.cG = str;
    }

    public void setAppId(String str) {
        this.appId = str;
    }

    public void setAppKey(String str) {
        this.cC = str;
    }

    public void setAuthCode(String str) {
        this.cH = str;
    }

    public void setBankType(Integer num) {
        this.cu = num;
    }

    public void setBody(String str) {
        this.co = str;
    }

    public void setCashierName(String str) {
        this.cs = str;
    }

    public void setMchId(String str) {
        this.mchId = str;
    }

    public void setMoney(double d10) {
        this.cz = d10;
    }

    public void setNotifyUrl(String str) {
        this.cA = str;
    }

    public void setOutTradeNo(String str) {
        this.X = str;
    }

    public void setPartner(String str) {
        this.cm = str;
    }

    public void setPay_logo(String str) {
        this.ct = str;
    }

    public void setSellerId(String str) {
        this.cD = str;
    }

    public void setServerType(String str) {
        this.cE = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setSignKey(String str) {
        this.cB = str;
    }

    public void setSubOpenID(String str) {
        this.cF = str;
    }

    public void setTokenId(String str) {
        this.tokenId = str;
    }

    public void setTradeName(String str) {
        this.ch = str;
    }

    public void setTradeType(String str) {
        this.bW = str;
    }

    public String toString() {
        return "RequestMsg [mchId=" + this.mchId + ", money=" + this.cz + ", body=" + this.co + ", notifyUrl=" + this.cA + ", outTradeNo=" + this.X + ", signKey=" + this.cB + ", sign=" + this.sign + ", partner=" + this.cm + ", appKey=" + this.cC + ", appId=" + this.appId + "]";
    }
}
