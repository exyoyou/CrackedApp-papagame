package com.switfpass.pay.bean;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class OrderBena implements Serializable {
    private String X;
    private String aM;
    private String appId;
    private String cf;
    private String cg;
    private String ch;
    private String ci;
    private String cj;
    private boolean ck;
    private String cl;
    private String cm;

    /* JADX INFO: renamed from: cn, reason: collision with root package name */
    private String f82645cn;
    private String co;
    private String cp;
    private String cq;
    private String cr;
    private String cs;
    private String ct;
    private Integer cu;
    private String cv;
    private String cw;
    private boolean cx;
    private String cy;
    private String mchId;
    private String message;
    private String nonceStr;
    private String sign;
    private String timeStamp;
    private String tokenId;

    public String getAppId() {
        return this.appId;
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

    public String getMchName() {
        return this.cr;
    }

    public String getMchOrderNo() {
        return this.cp;
    }

    public String getMessage() {
        return this.message;
    }

    public String getMoeny() {
        return this.ci;
    }

    public String getNonceStr() {
        return this.nonceStr;
    }

    public String getOpenID() {
        return this.cv;
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

    public String getPrepayid() {
        return this.cl;
    }

    public String getRedPack() {
        return this.cw;
    }

    public String getResCode() {
        return this.cy;
    }

    public String getService() {
        return this.cg;
    }

    public String getSign() {
        return this.sign;
    }

    public String getStatus() {
        return this.aM;
    }

    public String getTimeStamp() {
        return this.timeStamp;
    }

    public String getTokenId() {
        return this.tokenId;
    }

    public String getTradeName() {
        return this.ch;
    }

    public String getTradeTime() {
        return this.cj;
    }

    public String getTransactionId() {
        return this.cq;
    }

    public String getUuId() {
        return this.cf;
    }

    public String get_input_charset() {
        return this.f82645cn;
    }

    public boolean isMark() {
        return this.cx;
    }

    public boolean isQpay() {
        return this.ck;
    }

    public void setAppId(String str) {
        this.appId = str;
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

    public void setMark(boolean z10) {
        this.cx = z10;
    }

    public void setMchId(String str) {
        this.mchId = str;
    }

    public void setMchName(String str) {
        this.cr = str;
    }

    public void setMchOrderNo(String str) {
        this.cp = str;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setMoeny(String str) {
        this.ci = str;
    }

    public void setNonceStr(String str) {
        this.nonceStr = str;
    }

    public void setOpenID(String str) {
        this.cv = str;
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

    public void setPrepayid(String str) {
        this.cl = str;
    }

    public void setQpay(boolean z10) {
        this.ck = z10;
    }

    public void setRedPack(String str) {
        this.cw = str;
    }

    public void setResCode(String str) {
        this.cy = str;
    }

    public void setService(String str) {
        this.cg = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setStatus(String str) {
        this.aM = str;
    }

    public void setTimeStamp(String str) {
        this.timeStamp = str;
    }

    public void setTokenId(String str) {
        this.tokenId = str;
    }

    public void setTradeName(String str) {
        this.ch = str;
    }

    public void setTradeTime(String str) {
        this.cj = str;
    }

    public void setTransactionId(String str) {
        this.cq = str;
    }

    public void setUuId(String str) {
        this.cf = str;
    }

    public void set_input_charset(String str) {
        this.f82645cn = str;
    }
}
